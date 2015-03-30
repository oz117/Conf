#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int     main(void)
{
    int     i;
    size_t  square;

    i = 0;
    while (++i < 31) {
        signal(i, SIG_IGN);
    }
    square = 2;
    close(0);
    while (1) {

        printf("%zd\n", square);
        square *= square;
    }
    return (EXIT_SUCCESS);
}
