echo Show Name
read nm
for f in *.mp4
do
  echo $f
  echo Season
  read s
  s=`echo 00$s| tail -c 3`
  echo Episode
  read e
  e=`echo 00$e | tail -c 3`
  newName=$nm".S"$s"E"$e".mp4"
  mv $f $newName
  echo $newName
  echo "\n"
done
