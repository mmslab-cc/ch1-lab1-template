echo "Running tests..."
echo

output=$(./a.out)
expected_output="Welcome to C!"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

# Print output
echo "Output:"
diff --color=always --palette='ad=1;3;38;5;9:de=1;3;38;5;154' \
      <(echo "$expected_output" ) <(echo "$output")

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Failed"
  exit 1
fi

echo
echo "All tests passed."

exit 0
