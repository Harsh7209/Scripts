#!/bin/bash


# This script is for getting system logs

echo ""
echo ""
echo "============================= System Info ========================="
echo "Printing system info here : "
free_Ram () {
        echo "=================Available Ram========================"
        echo  "Available Ram is : "
        free -h | awk ' NR==2 {print $4}'
}

free_disk () {
        echo "===========================Avaailable disk memory=============================="
        echo "Available disk space is : "
         df -h | awk 'NR==2 {print $4}'
 }

process_memory () {
        echo "======================Most memory consuming process==============================="
        echo "The process name  using the most memory is : "
         ps aux --sort=-%mem | head -2 | awk 'NR==2 {print $1}'
         echo "The pid of process using the most memory is : "
         ps aux --sort=-%mem | head -2 | awk 'NR==2 {print $2}'
         echo "The total memory used by this process is : "
         ps aux --sort=-%mem | head -2 | awk 'NR==2 {print $4}'
 }
free_Ram
echo ""
free_disk
echo ""
process_memory

echo "======================End of system log==========================="




