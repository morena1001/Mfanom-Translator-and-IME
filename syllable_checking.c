#include <stdio.h>             
#include <stdlib.h>            
#include <string.h> 
#include <stdbool.h>

int main (int argc, char **argv)
{
    system ("cls");
    fprintf (stdout, "Input word to get syllables:\n");
    char input [256];
    while (fgets (input, sizeof (input), stdin))
    {
        system ("cls");
        if (*input == '.')
            break;

        else
        {
            char *token = strtok (input, " \n");

            while (token != NULL)
            {   
                fprintf (stdout, "%s\n", token);
                token = strtok (NULL, " \n");
            }
        }
    }
}