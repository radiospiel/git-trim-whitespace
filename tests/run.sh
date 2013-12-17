#/bin/sh
here=$(cd $(dirname $0) && pwd)
echo "== run tests in $here"
rc=0
for f in $here/*.test ; do 
  if cat $f | ../bin/trim_whitespace | diff - $f.out > $f.diff ; then
    echo "$(basename $f): ok"
  else
    echo "$(basename $f): FAILED, diff in $f.diff"
    rc=1
  fi
done

exit $rc
