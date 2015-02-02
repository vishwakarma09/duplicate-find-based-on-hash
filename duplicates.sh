#!/usr/bin/env bash
declare -A hashtable
declare -i i
md5sum `ls *.sh` > list.txt


function create_hash_table()
{
while read line
do
    name=$line
    hash=$(echo $line | cut -d' ' -f1)
    filename=$(echo $line | cut -d' ' -f2)
#    echo $hash $filename
    hashtable[$i,0]=$hash
    hashtable[$i,1]=$filename
    i=$i+1
done < list.txt
}

function print_array()
{
    for((j=0;j<=$i;j++)) do
        echo ${hashtable[$j,0]}
        echo ${hashtable[$j,1]}
    done
}

function delete_file()
{
if [ -z "$1" ]; then
   echo "no argument passed to $0"
else
   echo ${hashtable[$1,0]}
   echo ${hashtable[$1,1]}
fi
}

function find_duplicates()
{
    for((j=0;j<=$i;j++)) do
        seed=${hashtable[$j,0]}
        for((k=$j+1;k<=$i;k++)) do
                if [[ "${hashtable[$k,0]}" == $seed ]]; then
                        delete_file $k
                fi
        done
     done
}


create_hash_table
#print_array
find_duplicates