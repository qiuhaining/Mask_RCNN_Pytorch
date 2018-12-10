  export CXXFLAGS="-std=c++11"
  export CFLAGS="-std=c99"
  cd nms/src/cuda/
  nvcc -c -o nms_kernel.cu.o nms_kernel.cu -x cu -Xcompiler -fPIC -arch=arch
  cd ../../
  python build.py
  cd ../

  cd roialign/roi_align/src/cuda/
  nvcc -c -o crop_and_resize_kernel.cu.o crop_and_resize_kernel.cu -x cu -Xcompiler -fPIC -arch=arch
  cd ../../
  python build.py
  cd ../../
