#include "revert_string.h"
#include <string.h>

void RevertString(char *str)
{	
	int length = strlen(str) - 1;
	char *start = str;
	char *end = str + length;
	while (start < end)
	{
		char temp = *start;
		*start = *end;
		*end = temp;
		start ++;
		end--;
	}	

}

