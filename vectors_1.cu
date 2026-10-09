#include <thrust/device_vector.h>
#include <thrust/host_vector.h>

#include <thrust/copy.h>
#include <thrust/fill.h>
#include <thrust/sequence.h>

#include <iostream>

int main(void) {
	
	//Vector of size 10 set to 1 in all positions 
	thrust::device_vector<int> D(10, 1);
	
	//First 7 elements set to 9
	thrust::fill(D.begin(), D.begin() + 7, 9);
	
	//Host vector initialized to the first 5 elements of D
	thrust::host_vector<int> H(D.begin(), D.begin + 5);
	
	//Elements of H set in sequence from 0
	thrust::sequence(H.begin(), H.end());
	
	//Copy H back to the beginning of D
	thrust::copy(H.begin(), H.end(), D.begin);
		
	return 0;
}
