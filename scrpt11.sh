#11. Shell script to print specified range of lines from given files

if [ $# -eq 0 ]
then 
	echo "syntax is <$0> <filename1> <filename2> etc.."
	exit 1
fi

c=$#
echo "enter lower limit:"

read l
echo "enter upper limit:"
read u



while [ $c -gt 0 ]
do 
	file=$1
echo "$1 lines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0

<<com

output:

 sh scrpt11.sh
syntax is <scrpt11.sh> <filename1> <filename2> etc..
ksb@ksb:~/sanan/script/exercise$ sh scrpt11.sh a.sh sanan.txt
enter lower limit:
2
enter upper limit:
4
a.sh lines 2 to 4
messi
cr7
linux
sanan.txt lines 2 to 4
shamil
sarasu
dasan

com
