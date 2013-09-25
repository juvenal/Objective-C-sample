/**
 *
 *
 *
 *
 *
 *
 */

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
	int i = 0;

	for (i = 0; i < 10; i++) {
		if (i > 0) {
			printf("Hello World %d times!\n", i + 1);
		}
		else {
			printf("Hello World %d time!\n", i + 1);
		}
	}
	return EXIT_SUCCESS;
}

/* vim: set ts=4 ai: */
