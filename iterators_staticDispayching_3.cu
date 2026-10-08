#include <thrust/device_vector.h>
#include <thrust/copy.h>
#include <list>
#include <vector>


int main(void) {
	//STL list of 4 values
	std::list<int> stl_list;
	
	stl::list.pushback(10);
	stl::list.pushback(20);
	stl::list.pushback(30);
	stl::list.pushback(40);
	
	//Initialize a device_vector with the list
	thrust::device_vector<int> D(stl_list.begin(), stl_list.end());
	
	//Copy device_vector into STL vector
	std::vector<int> stl_vector(D.size());
	thrust::copy(D.begin(), D.end(), stl_vector.begin());
	
	return 0;
}


