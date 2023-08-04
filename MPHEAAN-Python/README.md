# MP-HEAAN-Python
This is a Python wrapper for MP-HEAAN library.
[MP-HEAAN](./MP-HEAAN) is a extension of HEAAN through the secret sharing of CKKS secret keys, to enable aggregation of homomorphic ciphertexts under multiple keys.
[MP-HEAAN-Python] is a Python wrapper for MP-HEAAN library based on [HEAAN-Python](https://github.com/Huelse/HEAAN-Python).


## HEAAN-Python
  [HEAAN](https://github.com/snucrypto/HEAAN) is a software library that implements homomorphic encryption (HE) that supports fixed point arithmetics. This library supports approximate operations between rational numbers. The approximate error depends on some parameters and almost same with floating point operation errors. The scheme in this library is on the [paper](https://eprint.iacr.org/2016/421.pdf).

  [HEAAN-Python](https://github.com/Huelse/HEAAN-Python) is a Python wrapper for HEAAN library.



## build MP-HEAAN-Python and run the example

  Recommend: Clang++ (>= 10.0) or GNU G++ (>= 9.4), CMake (>= 3.16); Ububtu
  ```shell
  # pybind11
  cd pybind11
  mkdir build && cd build
  (pip3 install pytest)
  cmake ..
  make
  sudo make install

  # gmp-6.2.0
  sudo apt-get install m4
  cd gmp-6.2.0
  ./configure SHARED=on
  make
  make check
  sudo make install

  # NTL-11.4.3
  cd ntl-11.4.3/src
  ./configure SHERED=on
  make
  make check
  sudo make install
    # Q&A
    problem: install ntl error: gmp version mismatch 
      solve: cd gmp; sudo make uninstall; and install right version (gmp-6.2.0+NTL-11.4.3)

  # MP-HEAAN
  cd MP-HEAAN/lib
  make all

  # MP-HEAAN-Python (global install)
  python setup.py build_ext -i
  sudo python setup.py install 

  # test
  python tests/test-basic.py
  ```

  * ### Q&A
    problem: libntl.so.43: no find
    solve: 
    ```shell
    export LD_LIBRARY_PATH=/path/to/extends/lib
    sudo vim /etc/ld.so.conf 
      add `/path/to/extends/lib` to `/etc/ld.so.conf`
    sudo ldconfig
    ```

##  build MP-HEAAN-Python for MAC OS (M1)
  ```shell
  # pybind11
  python3.10 -m pip install -r requirements.txt

  # gmp-6.2.1
  tar zxvf ./gmp-6.2.1.tar.lz
  cd gmp-6.2.1
  ./configure SHARED=on
  make
  make check
  sudo make install

  # NTL-11.5.1
  cd ntl-11.5.1/src
  ./configure SHARED=on
  make
  make check
  sudo make install (get '/usr/local/lib/libntl.dylib')

  # modify src/wrapper.cpp
    #include <malloc.h> -> #include <malloc/malloc.h>
    malloc_usable_size -> malloc_size

  # modify setup.py
    add: cfg_vars[key] = value.replace('x86_', 'arm')
    '/usr/local/lib/libntl.so' -> '/usr/local/lib/libntl.dylib'

  # MP-HEAAN-Python (global install)
  python3.10 setup.py build_ext -i
  sudo python3.10 setup.py install 

  # basic test
  python3.10 tests/test-basic.py
  ```
  * ### Q&A
    problem: python3.10, ntl-11.5.1 are adopted for arm64. (e.g., ld: illegal thread local variable reference to regular symbol ZN3NTL17NTLThreadPool_ptrE for architecture x86_64; error: linker command failed; )
    solve: Do not using 'brew install ntl', if its python version is 3.8 which is not adopted for M1. 


## modify MP-HEAAN-Python and test the program
```shell
  # HEAAN (if modify HEAAN)
  cd HEAAN/lib
  make all
  ## del HEAAN.so
  #rm -r ./build
  
  # rebuild HEAAN-Python
  #python3.10 setup.py build_ext -i
  sudo python3.10 setup.py install
  or
  python3.10 rebuild.py

  # run test
  python3.10 tests/test-basic.py

```


