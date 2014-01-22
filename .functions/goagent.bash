
function goagent_stop() {
    sudo ps aux|grep proxy.py|grep -v grep|awk '{print $2}'|xargs kill
    print 'goagent stop'
}
function goagent_start() {
    nohup python ~/Tools/goagent/local/proxy.py &
    print 'goagent start'
}
function goagent_restart() {
    goagent_stop;
    goagent_start;
}
