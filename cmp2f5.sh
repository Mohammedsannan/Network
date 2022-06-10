#5.shell script to compare two files. if the files are identical delete one

if [ $# -ne 0 ]
then
echo "syntax is <$0>"
exit
fi

echo "enter filename 1:"
read f1
echo "enter filename 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then 	
	rm $f2
	echo "second file removed"
	exit
fi
echo "files not identical"
