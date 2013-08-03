#!/usr/bin/env php
<?php
$ret = post_ip();
print_r($ret);

//post ip to pc
function post_ip(){
    $url = 'http://192.168.11.110/host.php';
    $postdata = [];
    $postdata['ip'] = get_local_ip();

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
    $data = curl_exec($ch);
    curl_close($ch);
    return $data;
}

//get local ip
function get_local_ip(){
    exec('ifconfig -a', $arr);
    foreach($arr as $r){
        if(preg_match('/(.+?)192\.168\.(.+?)netmask/is', $r, $match)){
            if(isset($match[2]))
                return '192.168.'.trim($match[2]);
        }
    }
    return false;
}
