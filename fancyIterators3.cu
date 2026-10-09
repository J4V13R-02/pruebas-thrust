#include <thrust/iterator/transform_iterator.h>
#include <thrust/device_vector.h>

int main(void) {

	thrust::device_vector<int> vec(3);
	
	vec[0] = 10;
	vec[1] = 20;
	vec[2] = 30;
	
	//Create iterator (type omitted);
	...
	first	= thrust::make_transform_iterator(vec.begin(), 	negate<int> ());
	...
	last	= thrust::make_transform_iterator(vec.end(), 	negate<int> ());
	
	first[0] //returns -10
	
	thrust::reduce(first, last); //returns -60 (-10 + -20 + -30)
	
	return 0;
	
}
