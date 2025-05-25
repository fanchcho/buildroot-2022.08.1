# !/bin/sh

case "$1" in
    start)
        source /root/init/start.sh
        ;;
    stop)
	/root/init/stop.sh
        ;;
    restart|reload)
        $0 stop
        $0 start
        ;;
    *)
        exit 1
        ;;
esac
exit 0

