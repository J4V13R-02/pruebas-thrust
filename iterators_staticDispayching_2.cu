#include "thrust/device_ptr.h"
#include "thrust/device_malloc.h"
#include "thrust/fill.h"

int main(void) {
	size_t N = 10;

	//Create device_ptr
	thrust::device_ptr<int> dev_ptr = thrust::device_malloc<int>(N);

	//Extract raw pointer from device_ptr
	int * raw_ptr = thrust::raw_pointer_cast(dev_ptr);
	
	return 0;
}


