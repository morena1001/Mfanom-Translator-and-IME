#include <stdio.h>             
#include <stdlib.h>            
#include <string.h> 
#include <stdbool.h>

int main (int argc, char **argv)
{
    FILE *text_file;
    FILE *output_file;
    char line[5];
    int i = 1;

    text_file = fopen("loop.txt", "r");
    output_file = fopen("final.txt", "a");

    while (fgets(line, sizeof(line), text_file))
    {
        if (i <= 75)
            line[3] = 'm';//printf("m\n");
        else if (i <= 150)
            line[3] = 'n';//printf("n\n");
        else if (i <= 225)
            line[3] = 'p';//printf("p\n");
        else if (i <= 300)
            line[3] = 'f';//printf("f\n");
        else if (i <= 375)
            line[3] = 't';//printf("t\n");
        else if (i <= 450)
            line[3] = 'd';//printf("d\n");
        else if (i <= 525)
            line[3] = 's';//printf("s\n");
        else if (i <= 600)
            line[3] = 'q';//printf("q\n");
        else if (i <= 675)
            line[3] = 'r';//printf("r\n");
        else if (i <= 750)
            line[3] = 'l';//printf("l\n");
        else if (i <= 825)
            line[3] = 'y';//printf("y\n");
        else if (i <= 900)
            line[3] = 'k';//printf("k\n");
        else if (i <= 975)
            line[3] = 'g';//printf("g\n");
        else if (i <= 1050)
            line[3] = 'h';//printf("h\n");
        else if (i <= 1125)
            line[3] = 'j';//printf("j\n");
        
        printf("%s\n", line);
        fprintf(output_file, "%s\n", line);
        i++;
    }
}