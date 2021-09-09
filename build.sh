mkdir build install
cd build
cmake -DCMAKE_INSTALL_PREFIX=../install/ ..
cmake --build .
cmake --install .