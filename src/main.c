
#include <stdio.h>

extern char _binary_res_cat_txt_start[];
extern char _binary_res_cat_txt_end[];

int main(void)
{
    printf( "address of start: %p\n", &_binary_res_cat_txt_start);
    printf( "addrsess of end: %p\n", &_binary_res_cat_txt_end);

    for (char* p = _binary_res_cat_txt_start; p != _binary_res_cat_txt_end; ++p) {
        putchar( *p);
    }

    return 0;
}
