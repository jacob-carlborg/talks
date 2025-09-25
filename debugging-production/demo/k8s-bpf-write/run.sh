kubectl debug -it fotara-web-aposuite-1-79c5574949-7r586  --namespace=fotara --context=sandbox --image=nixery.dev/shell/bpftrace/bcc/procps/findutils/vim/mount/gnugrep/less/busybox --target=web --profile=sysadmin -- bash

mount -t debugfs debugfs /sys/kernel/debug

export BPFTRACE_MAX_STRLEN=10834

bpftrace -p 1 -e 'uprobe:/proc/1/root/usr/lib/x86_64-linux-gnu/libssl.so.3:SSL_write* { printf("%s\n\n", str(arg1, 10834)); }'
