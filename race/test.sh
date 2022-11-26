./racy 2>&1 | grep 'WARNING: DATA RACE' >/dev/null 2>/dev/null
if [ $? = 0 ]; then
  echo "PASS"
  exit 0
else
  echo "FAIL: Should have detected race warning."
  exit 1
fi
