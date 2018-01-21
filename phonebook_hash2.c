#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "phonebook_hash2.h"

entry *findName(char lastName[], entry *pHead[])
{
    unsigned int key = BKDRHash(lastName) % 2207;
    while (pHead[key] != NULL) {
        if (strcasecmp(lastName, pHead[key]->lastName) == 0) {
            printf(" %12s  is found!\n", lastName);
            return pHead[key];
        }
        pHead[key] = pHead[key]->pNext;
    }
    return NULL;
}

entry *append(char lastName[], entry *e[])
{
    /* allocate memory for the new entry and put lastName */
    unsigned int key = BKDRHash(lastName) % 2207;
    e[key]->pNext = (entry *)malloc(sizeof(entry));
    e[key] = e[key]->pNext;
    strcpy(e[key]->lastName, lastName);
    e[key]->pNext = NULL;

    return e[key];
}

unsigned int BKDRHash(char lastName[])
{
    unsigned int seed = 131; //31, 131,1313, ...etc
    unsigned int hash = 0;
    while (*lastName)
        hash = hash * seed + (*lastName++);
    return hash;
}
