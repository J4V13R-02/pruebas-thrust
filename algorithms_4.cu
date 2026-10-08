#include <thrust/scan.h>

  

int main(void) {
	int data[6] = {1, 0, 2, 2, 1, 3};
	
	//Inclusive scan adds the range from start to current position
	//As it's iterative, the values in the range are from last iteration 
	thrust::inclusive_scan(data, data + 6, data);
	
	//exclusive_scan is the same but result is shifted one position
	thrust::exclusive_scan(data, data + 6, data);
	
	return 0;
}
