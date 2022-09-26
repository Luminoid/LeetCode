#!/bin/bash

python_str="Python"
sqlite_str="SQLite"
language=$python_str

while getopts i:p:l:h flag
do
    case "${flag}" in
        i) index=${OPTARG};;
        p) problem=${OPTARG};;
        l) language=${OPTARG};;
        h) echo "./add_problem.sh -i <problem index> -p <problem name> -l <language>"; exit 0
    esac
done

if [ -z ${index} ] || [ -z "${problem}" ]; then
    echo "Error: index and problem name cannot be null"
    exit 1
fi

filename=${problem//[[:blank:]]/}
problem_url=$(echo ${problem// /-} | tr '[:upper:]' '[:lower:]')

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
        echo "| ${index} | [${problem}](https://leetcode.com/problems/${problem_url}) | [Python](${filepath}) |  |  |" >> Readme.md
    elif [ $language = $sqlite_str ]; then
        echo "| ${index} | [${problem}](https://leetcode.com/problems/${problem_url}) | [SQL](${filepath}) |  | Database |" >> Readme.md
    fi
    echo "File created: ${filepath}"
}

add_problem
