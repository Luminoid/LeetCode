#!/bin/bash

python_str="Python"
java_str="Java"
sql_str="SQL"
bash_str="Bash"
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
        M) difficulty="Medium";;
        H) difficulty="Hard";;
    esac
done

if [ -z ${index} ] || [ -z "${title}" ]; then
    echo "Error: problem index and title cannot be null"
    exit 1
fi

problem_url=$(echo ${title// /-} | tr '[:upper:]' '[:lower:]')

add_problem(){
    if [ $language = $python_str ]; then
        filename=${title//[[:blank:]]/}
        filepath=PythonCode/${filename}.py
    elif [ $language = $java_str ]; then
        filename=${title//[[:blank:]]/}
        filepath=JavaCode/src/${filename}.java
    elif [ $language = $sql_str ]; then
        filename=$(echo ${title// /_} | tr '[:upper:]' '[:lower:]')
        filepath=SQLCode/${filename}.sql
    elif [ $language = $bash_str ]; then
        filename=$(echo ${title// /_} | tr '[:upper:]' '[:lower:]')
        filepath=BashCode/${filename}.sh
    else 
        echo "Only Python, Java, SQL and Bash are supported right now."
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
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Python](${filepath}) | ${difficulty} |  |\n" ${index} >> Readme.md
    elif [ $language = $java_str ]; then
        echo "class $filename {
    // Time complexity: O()
    // Space complexity: O()
    
    public static void main(String[] args) {

    }
}
" >> $filepath
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Java](${filepath}) | ${difficulty} |  |\n" ${index} >> Readme.md
    elif [ $language = $sql_str ]; then
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [SQL](${filepath}) | ${difficulty} | Database |\n" ${index} >> Readme.md
    elif [ $language = $bash_str ]; then
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Bash](${filepath}) | ${difficulty} | Shell |\n" ${index} >> Readme.md
    fi
    echo "File created: ${filepath}"
}

add_problem
