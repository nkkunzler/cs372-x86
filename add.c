#include <stdint.h>
#include <stdio.h>

int64_t add(int64_t a, int64_t b){
	printf("%ld + %ld = %ld\n", a, b, a+b);
    return a+b;
}

int main(){
	return 0;
}
