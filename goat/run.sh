make clean
ghc Goat.hs -o Goat
./Goat -p testCase/blank.gt
./Goat -p testCase/2_hello.gt
./Goat -p testCase/test.gt
./Goat -p testCase/hello_para_in_main.gt
./Goat -p testCase/asg.gt
./Goat -p testCase/hello.gt
./Goat -p testCase/io.gt
./Goat -p testCase/test_hello.gt
./Goat -p testCase/stmtTest.gt
./Goat -p testCase/backslash.gt
./Goat -p testCase/write_test.gt

echo "---------------------- matrix test case ----------------------"
# testing for matrix
./Goat -p testCase/matrix_whitespace.gt > testCase/matrix_whitespace_output.txt
diff testCase/matrix_whitespace_expecting_output.txt testCase/matrix_whitespace_output.txt

echo "---------------------- multiple main proc checking ----------------------"
# testing for multiple main procedure
./Goat -p testCase/mainNumChecking.gt > testCase/mainNumChecking_output.txt
diff testCase/mainNumChecking_expecting_output.txt testCase/mainNumChecking_output.txt
