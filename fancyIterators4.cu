#include <thrust/iterator/zip_iterator.h>
#include <thrust/device_vector.h>
#include <thrust/reduce.h>

int main(void) {

	thrust::device_vector<int> map(4);

	map[0] = 3;
	map[1] = 1;
	map[2] = 0;
	map[3] = 5;
	
	thrust::device_vector<int> source(6);
	
	source[0] = 10;
	source[1] = 20;
	source[2] = 30;
	source[3] = 40;
	source[4] = 50;
	source[5] = 60;
	
	//permutation iterator gets the values of source[map[]]
	//add the elements
	int sum = thrust::reduce(
		//iterates over the "virtual vector"
		thrust::make_permutation_iterator(source.begin(), map.begin()),
		//indicates the end of the range, actually just after the last element
		thrust::make_permutation_iterator(source.begin(), map.end())
	);
	
	return 0;
	
}
