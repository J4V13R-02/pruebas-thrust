#include <thrust/device_vector.h>
#include <thrust/reduce.h>
#include <thrust/functional.h>

#include <iostream>

int main(void) {
	
	thrust::device_vector<int> X(10);
	
	//Reduction to sum values of the device_vector
	int sum = thrust::reduce(X.begin(), X.end(), (int) 0, thrust::plus<int>());
	
	//These two lines are equivalent to the one with plus function
	sum = thrust::reduce(X.begin(), X.end(), (int) 0);
	sum = thrust::reduce(X.begin(), X.end());

	return 0;
}
