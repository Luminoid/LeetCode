# NF: number of fields in the current record.
# NR: ordinal number of the current record.
# RS: input record separator (default newline).
# FS: regular expression used to separate fields
awk '
{
    for (i = 1; i <= NF; i++) {
        arr[i, NR] = $i
    }
} END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf arr[i, j] (j == NR ? RS : FS)
        }
    }
}
' file.txt
