#include <unistd.h>

#define GREETING ("Hello World!\n")
#define GREETING_SIZE (sizeof (GREETING) - 1)

int main(void)
{
    ssize_t written = write(STDOUT_FILENO, GREETING, GREETING_SIZE);

    return (written == GREETING_SIZE);
}
