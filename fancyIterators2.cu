#include <thrust/iterator/counting_iterator.h>

int main(void) {

	thrust::counting_iterator<int> first(10);
	thrust::counting_iterator<int> lasts = first + 3;
	
	first[0] //returns 10
	first[100] //returns 110
	
	//sum from first to last	
	thrust::reduce(first, last); //returns 33 (10+11+12)
	
	return 0;
	
}
