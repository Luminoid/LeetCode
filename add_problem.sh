#!/bin/bash

python_str="Python"
language=python_str

while getopts i:p:l:h flag
do
    case "${flag}" in
        i) index=${OPTARG};;
        p) problem=${OPTARG};;
        l) language=${OPTARG};;
        h) echo "./add_problem.sh -i <problem index> -p <problem name>"; exit 0
    esac
done

if [ -z ${index} ] || [ -z ${problem} ]; then
    echo "Error: index and problem name cannot be null"
    exit 1
fi

filename=${problem//[[:blank:]]/}
problem_url=$(echo ${problem// /-} | tr '[:upper:]' '[:lower:]')

add_problem_by_python(){
    filepath=PythonCode/${filename}.py
    touch $filepath
    echo "class Solution:
    # Time complexity: O()
    # Space complexity: O()


if __name__ == '__main__':
    solution = Solution()
" >> $filepath
    echo "| ${index} | [${problem}](https://leetcode.com/problems/${problem_url}) | [Python](${filepath}) |  |  |" >> Readme.md
    echo "File created: ${filepath}"
}

if [ $language = python_str ]; then
    add_problem_by_python
else
    echo "Only Python is supported right now."
fi
