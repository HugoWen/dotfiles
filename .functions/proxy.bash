#!/bin/bash

#默认 开https  不开http
proxy_on(){
   sudo networksetup -setsecurewebproxystate 'Wi-Fi' on
   sudo networksetup -setwebproxystate 'Wi-Fi' off
}

#关闭代理
proxy_off(){
   sudo networksetup -setwebproxystate 'Wi-Fi' off
   sudo networksetup -setsecurewebproxystate 'Wi-Fi' off
}

#打开http和https代理
proxy_all(){
   sudo networksetup -setwebproxystate 'Wi-Fi' on
   sudo networksetup -setsecurewebproxystate 'Wi-Fi' on
}

