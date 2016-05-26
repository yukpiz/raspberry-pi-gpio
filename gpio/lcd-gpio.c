#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <lcd.h>

int main(int argc, char **argv) {
	int fd;
	int c;
	int i;

	if(wiringPiSetup() == -1) {
		printf("Setup Fail\n");
		exit(1);
	}

	fd = lcdInit(2,16,8,4,5,0,1,2,3,4,5,6,7);

	lcdClear(fd);
	lcdPuts(fd, "ABCDEFGHIJKLMNOP");
	lcdPosition(fd, 0, 1);
	lcdPuts(fd, "abcdefghijklmnop");

	while (1) {
		printf("0:lcdDisplay test\n");
		printf("1:lcdCursor test\n");
		printf("2:lcdBlink test\n");
		printf("q:End\n");
		c=getchar();

		if (c == '1') {
			for (i=0; i<16; i++) {
				lcdPosition(fd,i,0);
				lcdCursor(fd,1);
				sleep(1);
			}
			lcdCursor(fd,0);
		}

		if (c == '2') {
			for (i=0; i<16; i++) {
				lcdPosition(fd,i,1);
				lcdCursorBlink(fd,1);
				sleep(1);
			}
			lcdCursorBlink(fd,0);
		}
	}
	lcdClear(fd);
}
