 #!/usr/bin/env bash

echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

i=0

#Empty the log files to start with
> output.txt
> errors.txt

while [ $? -ne 1 ]
do
	i=$((i+1))
	./checkFail.sh >> output.txt 2>> errors.txt
done

echo ":::::::Printing all outputs::::::::"

echo "$( cat output.txt )"
echo "$( cat errors.txt )" 

echo "Failed after $i iterations" 
