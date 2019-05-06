# Example.txt
# smiths|Login|2
# olivert|Login|10
# denniss|Payroll|100
# smiths|Time|200
# smiths|Logout|10

# First look on wich column to SUM with patterns
awk -F '|' '$1 ~ /smiths/ {sum += $3} END {print sum}' inputfilename

# use awk associative arrays
awk -F '|' '{a[$1] += $3} END{print a["smiths"]}' filename.txt

# Sum the 
awk -F '|' '{a[$1] += $3} END{for (i in a) print i, a[i]}' filename.txt

# Example Output:
# smiths 212
# denniss 100
# olivert 10
