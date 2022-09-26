#!/bin/bash

python_str="Python"
sqlite_str="SQLite"
language=$python_str
difficulty=""

while getopts i:t:l:hEMH flag
do
    case "${flag}" in
        i) index=${OPTARG};;
        t) title=${OPTARG};;
        l) language=${OPTARG};;
        h) echo "./add_problem.sh -i <problem index> -t <problem title> [-E | -M | -H] [-l <language>]"; exit 0;;
        E) difficulty="Easy";;
        M) difficulty="Middle";;
        H) difficulty="Hard";;
    esac
done

if [ -z ${index} ] || [ -z "${title}" ]; then
    echo "Error: problem index and title cannot be null"
    exit 1
fi

filename=${title//[[:blank:]]/}
problem_url=$(echo ${title// /-} | tr '[:upper:]' '[:lower:]')

add_problem(){
    if [ $language = $python_str ]; then
        filepath=PythonCode/${filename}.py
    elif [ $language = $sqlite_str ]; then
        filepath=SQLiteCode/${filename}.sql
    else 
        echo "Only Python and SQLite is supported right now."
        exit 2
    fi
    touch $filepath

    if [ $language = $python_str ]; then
        echo "class Solution:
    # Time complexity: O()
    # Space complexity: O()


if __name__ == '__main__':
    solution = Solution()
" >> $filepath
        echo "| ${index} | [${title}](https://leetcode.com/problems/${problem_url}) | [Python](${filepath}) | ${difficulty} |  |" >> Readme.md
    elif [ $language = $sqlite_str ]; then
        echo "| ${index} | [${title}](https://leetcode.com/problems/${problem_url}) | [SQL](${filepath}) | ${difficulty} | Database |" >> Readme.md
    fi
    echo "File created: ${filepath}"
}

add_problem
