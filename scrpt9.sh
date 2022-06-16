#9. Shell script to delete all lines if a file containing word linux
if [ $# -ne 0 ]
then
	echo "syntax error is <$0>"
	exit
fi

touch fileA
echo " enter the file name:"
read file

ter=`tty`
exec < $file

while read line
do
echo $line | grep -i linux > file2
	if [ $? -eq 0 ]
	then
		continue
	fi	
	echo $line >> fileA
done

mv fileA $file
rm file2
exec < $ter
