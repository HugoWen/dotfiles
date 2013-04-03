把plist文件copy到~/Users/xxx/Library/LaunchAgents/下面。

再然后命令行执行 launchctl load -w ${program}.plist

如果不需要开机启动，则把load改成unload
