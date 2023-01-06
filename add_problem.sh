#!/bin/bash
# Usage example: ./add_problem.sh -i 349 -t "Intersection of Two Arrays" -E -l Swift

python_str="Python"
java_str="Java"
swift_str="Swift"
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
    elif [ $language = $swift_str ]; then
        filename=${title//[[:blank:]]/}
        filepath=SwiftCode/${filename}.swift
    elif [ $language = $sql_str ]; then
        filename=$(echo ${title// /_} | tr '[:upper:]' '[:lower:]')
        filepath=SQLCode/${filename}.sql
    elif [ $language = $bash_str ]; then
        filename=$(echo ${title// /_} | tr '[:upper:]' '[:lower:]')
        filepath=BashCode/${filename}.sh
    else 
        echo "Python, Java, Swift, SQL and Bash are supported right now."
        exit 2
    fi

    # Swift file index need to be added to pbxproj
    # Create swift file manually in Xcode
    if [ $language != $swift_str ]; then
        touch $filepath
        echo "File created: ${filepath}"
    fi

    if [ $language = $python_str ]; then
        echo "class Solution:
    # Time complexity: O()
    # Space complexity: O()


if __name__ == '__main__':
    solution = Solution()
" >> $filepath
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Python](${filepath}) | ${difficulty} |  | |\n" ${index} >> Readme.md
    elif [ $language = $java_str ]; then
        echo "class $filename {
    // Time complexity: O()
    // Space complexity: O()
    
    public static void main(String[] args) {

    }
}" >> $filepath
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Java](${filepath}) | ${difficulty} |  | |\n" ${index} >> Readme.md
    elif [ $language = $swift_str ]; then
        echo "Swift Templete
//@main
private class Solution {
    // Time complexity: O()
    // Space complexity: O()
    
    static func main() {
        let solution = Solution()
    }
}"
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Swift](${filepath}) | ${difficulty} |  | |\n" ${index} >> Readme.md
    elif [ $language = $sql_str ]; then
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [SQL](${filepath}) | ${difficulty} |\n" ${index} >> Readme.md
    elif [ $language = $bash_str ]; then
        printf "| %-4s | [${title}](https://leetcode.com/problems/${problem_url}) | [Bash](${filepath}) | ${difficulty} |\n" ${index} >> Readme.md
    fi
    echo "Readme updated"
}

add_problem
