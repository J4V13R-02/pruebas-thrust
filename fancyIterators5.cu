#include <thrust/iterator/zip_iterator.h>
#include <thrust/device_vector.h>
#include <thrust/functional.h>
#include <thrust/reduce.h>
#include <thrust/tuple.h>

int main(void) {

	thrust::device_vector<int> 	A = {10, 20, 30};
	thrust::device_vector<char> B = {'x', 'y', 'z'};
	
	//create iterators 
	auto first 	= thrust::make_zip_iterator(thrust::make_tuple(A.begin(), B.begin()	));
	auto last 	= thrust::make_zip_iterator(thrust::make_tuple(A.end()	, B.end()	));
	
	first[0] //returns tuple(10, 'x')
	
	//maximum of (first, last)
	thrust::maximum<tuple < int, char> > binary_op;
	thrust::tuple<int, char> init = first[0];
	thrust::reduce (first, last, init, binary_op); //return tuple (30, 'z')
	
	return 0;
	
}
