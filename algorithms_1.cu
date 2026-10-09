#include <thrust/device_vector.h>
#include <thrust/transform.h>
#include <thrust/sequence.h>
#include <thrust/copy.h>
#include <thrust/fill.h>
#include <thrust/replace.h>
#include <thrust/functional.h>

#include <iostream>

int main(void) {
	//Allocate 3 device_vector with 10 elements
	thrust::device_vector<int> X(10);
	thrust::device_vector<int> Y(10);
	thrust::device_vector<int> Z(10);
	
	//Initialize X to 0, 1, 2...
	thrust::sequence(X.begin(), X.end());
	
	//Compute Y = -X
	thrust::transform(X.begin(), X.end(), Y.begin(), thrust::negate<int> ());
	
	//Fill Z with 2
	thrust::fill(Z.begin(), Z.end(), 2);
	
	//Compute Y = X mod 2
	thrust::transform(X.begin(), X.end(), Z.begin(), Y.begin(), thrust::modulus<int> ());
	
	//Replace every 1 in Y with 10
	thrust::replace(Y.begin(), Y.end(), 1, 10);
	
	//Print Y
	thrust::copy(Y.begin(), Y.end(), std::ostream_iterator<int>(std::cout, "\n"));

	return 0;
}
