
#!/bin/bash
# This script calculates simple interest
echo "Enter Principal:"
read principal
echo "Enter Rate of Interest:"
read rate
echo "Enter Time (in years):"
read time

interest=$(echo "$principal * $rate * $time / 100" | bc)
echo "The Simple Interest is: $interest"
