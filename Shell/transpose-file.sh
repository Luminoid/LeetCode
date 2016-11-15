awk '
{
    for (i = 1; i <= NF; i++){
        if (NR == 1) str[i] = $i
        else str[i] = str[i] " " $i
    }
} END {
    for (i = 1; str[i] != ""; i++){
        print str[i]
    }
}' file.txt