kubectl debug -it fotara-web-aposuite-1-79c5574949-7r586  --namespace=fotara --context=sandbox --image=nixery.dev/shell/bpftrace/bcc/procps/findutils/vim/mount/gnugrep/less/busybox --target=web --profile=sysadmin -- bash

mount -t debugfs debugfs /sys/kernel/debug

export BPFTRACE_MAX_STRLEN=10834

bpftrace -p 1 -e 'usdt::ruby:method__entry { @[str(arg0), str(arg1)] = count(); }'
bpftrace -p 1 -e 'usdt::ruby:method__entry /str(arg0) == "Net::HTTP" && str(arg1) == "new"/ { printf("%s\n", str(arg4)); }'
tplist -l /proc/1/root/usr/local/bin/ruby
