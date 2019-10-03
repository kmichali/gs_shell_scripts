if [ $# -eq 0  ]
then
 echo "usage: bash rungoostats.sh files"
 exit
fi



for fname in $@
do
echo $fname
  LEN=$(cat $fname | wc -l)
  echo $LEN
  if [ $LEN -ne 300 ]
  then
    echo "shortie"
  else
    echo "goostats $fname stats-$fname"
  fi
done




