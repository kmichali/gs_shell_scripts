# this runs goostats on all given files
# arg 1: filenames using wild card, all in quotes
# arg 2: correct line count per file


if [ $# -ne 2  ]
then
 echo "usage: bash rungoostats.sh \"files\" line_count"
 exit
fi



for fname in $1

do
echo $fname
  LEN=$(cat $fname | wc -l)
  echo $LEN
  if [ $LEN -ne $2 ]
  then
    echo "wrong line count: $LEN"
  else
    echo "goostats $fname stats-$fname"
  fi
done




