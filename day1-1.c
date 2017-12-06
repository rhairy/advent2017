#include <string.h>

#include "advent.h"

int main(int argc, char* argv[])
{
	if (argc != 2) {
		return -1;
	}

	const char* str = argv[1];
	const size_t len = strlen(str);
	unsigned sum = 0;

	for (unsigned i = 1; i < len; i++) {
		if (str[i] == str[i - 1]) {
			sum += ctoi(str[i]);
		}
	}
	if (str[len - 1] == str[0]) {
		sum += ctoi(str[0]);
	}

	return sum;
}
