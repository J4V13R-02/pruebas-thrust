#include <thrust/sort.h>

  

int main(void) {
	const int N = 6;
	int A[N] = {1, 4, 2, 8, 5, 7};
	
	thrust::sort(A, A + N);
	
	//Backwards sorting with greater
	thrust::sort(A, A + N, thrust::greater<int>);
	
	//Stable sort respects order of equivalent values
	int B[N] = {1, 4, 5, 8, 5, 7};
	thrust::stable_sort(B, B + N);
	
	//sort_by_key sorts the values to the places of their keys
	int		C_KEYS[N]	= { 1, 4, 2, 8, 5, 7};
	char	C_VALUES[N] = { 'a', 'b', 'c', 'd', 'e'};
	
	thrust::sort_by_keys(C_KEYS, C_KEYS + N, C_VALUES);
	//there's also stable_sort_by_keys
	
	
	return 0;
}
