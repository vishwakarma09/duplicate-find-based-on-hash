# duplicate-find-based-on-hash
A bash script to find out duplicate files on filesystem based on hash sum. It outputs the hash and filename. To invoke in current directory, run ./duplicate.sh

Sample run:

root@sandzvps:~/bash# ls
cleanup.sh  cleanup2.sh  cleanup3.sh  duplicate.sh  exercise.sh  exercise2.sh  functions  list.txt  parts.sh  poodle.sh  test
root@sandzvps:~/bash# ./duplicate.sh 


e9ab3d7e4612133f910eb3a2d350c51f
cleanup3.sh
50c812685726e9b98174e7ef5330d802
exercise2.sh
root@sandzvps:~/bash# cat list.txt 
e9ab3d7e4612133f910eb3a2d350c51f  cleanup.sh
e9ab3d7e4612133f910eb3a2d350c51f  cleanup2.sh
e9ab3d7e4612133f910eb3a2d350c51f  cleanup3.sh
ed92538fb7b68f4e554924fe951c0ea9  duplicate.sh
50c812685726e9b98174e7ef5330d802  exercise.sh
50c812685726e9b98174e7ef5330d802  exercise2.sh
80e27903fe03b628b4b27e5a0dced527  parts.sh
070aa613c3502ae50f3c1c5e69c08b72  poodle.sh
root@sandzvps:~/bash# 
