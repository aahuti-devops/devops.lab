top -bn1 | grep "%Cpu(s)" | cut -d ',' -f4 | awk '{print "Total CPU usage: " 100-$1 "%"}'
// This command will give CPU utilization

free -h | awk '/^Mem:/ {print "Total: "$2, "Used: "$3" (" sprintf("%.1f%%", ($3/$2)*100) ")", "Free: "$4}'
// This commanda will give Memory


df -h --total | awk '/^total/ {print "Total Disk: "$2, "Used: "$3" (" sprintf("%.1f%%", ($3/$2)*100) ")", "Free: "$4" (" sprintf("%.1f%%", ($4/$2)*100) ")"}'
// this command will give disk utilization

ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6
// this will give top 5 cpu processes

ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%mem | head -n 6
// this will give top 5 memory usage
