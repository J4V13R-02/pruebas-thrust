#include <thrust/device_ptr.h>
#include <thrust/fill.h>

int main(void) {
	size_t N = 10;

	//Raw pointer to device memory
	int * raw_ptr;
	cudaMalloc((void **) &raw_ptr, N * sizeof(int));

	//Wrap the pointer with a device_ptr
	thrust::device_ptr<int> dev_ptr(raw_ptr);

	//Use device_ptr in thrust algorithms
	thrust::fill(dev_ptr, dev_ptr + N, (int) 0);
	
	for(size_t i = 0; i < N; i++) {
		std::cout << "Pointer " << i << ": "<< dev_ptr + i << std::endl;
	}

	return 0;
}


