mkdir build install
cd build
cmake -Ax64 -DCMAKE_INSTALL_PREFIX=../install/ ..
cmake --build . --config Release
cmake --install .