# Test suite for Advent of Code 2017.

test_case() 
{
	local test_case_msg="$1"
	local command="$2"
	local command_input="$3"
	local solution="$4"

	echo "$test_case_msg"
	
	"$command" "$command_input"	

	if [ ! "$?" -eq "$solution" ]
	then
		echo "ERROR - Test case failed."
		exit 1
	else 
		echo "SUCCESS"
	fi
}

# Day1 Part1 tests.

test_case "Testing Reverse Captcha Part 1 - input: 1122" "./day1-1" "1122" "3"
test_case "Testing Reverse Captcha Part 1 - input: 1111" "./day1-1" "1111" "4"
test_case "Testing Reverse Captcha Part 1 - input: 1234" "./day1-1" "1234" "0"
test_case "Testing Reverse Captcha Part 1 - input: 91212129" "./day1-1" "91212129" "9"

