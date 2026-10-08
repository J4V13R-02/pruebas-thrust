#include <thrust/device_vector.h>
#include <thrust/count.h>
  

int main(void) {
	
	thrust::device_vector<int> vec(5, 0);

	//Place three 1s in a device_vector
	vec[1] = 1;
	vec[3] = 1;
	vec[4] = 1;
	
	//Count how many ones are in vec
	int result = thrust::count(vec.begin(), vec.end(), 1);
	
	return 0;
}
