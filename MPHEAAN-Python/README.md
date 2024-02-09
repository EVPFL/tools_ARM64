# MP-HEAAN-Python (ARM64 VERSION)
This is a Python wrapper for MP-HEAAN library for ARM64.
[MP-HEAAN](./MP-HEAAN) is a extension of HEAAN through the secret sharing of CKKS secret keys, to enable aggregation of homomorphic ciphertexts under multiple keys.
[MP-HEAAN-Python] is a Python wrapper for MP-HEAAN library based on [HEAAN-Python](https://github.com/Huelse/HEAAN-Python).


## HEAAN-Python
  [HEAAN](https://github.com/snucrypto/HEAAN) is a software library that implements homomorphic encryption (HE) that supports fixed point arithmetics. This library supports approximate operations between rational numbers. The approximate error depends on some parameters and almost same with floating point operation errors. The scheme in this library is on the [paper](https://eprint.iacr.org/2016/421.pdf).

  [HEAAN-Python](https://github.com/Huelse/HEAAN-Python) is a Python wrapper for HEAAN library.


##  build MP-HEAAN-Python and run the example
  * ### Recommend: Clang++ (>= 10.0) or GNU G++ (>= 9.4), CMake (>= 3.16); Python 3.10; MAC OS (M1)

  * ### install requirements.txt (python libararies, including pybind11, numpy, etc.)
    ``` shell
        python3.10 -m pip install -r requirements.txt
    ```

  * ### install GMP and NTL
    * Download links
        GMP: https://gmplib.org/#DOWNLOAD
        NTL: https://libntl.org/download.html

    * GMP-6.2.1 (https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz)
    ``` shell
        sudo apt-get install m4

        # tar -xf gmp-6.2.1.tar.xz
        cd gmp-6.2.1
        ./configure SHARED=on
        make
        make check #optional
        sudo make install
    ```

    * NTL-11.5.1 (https://libntl.org/ntl-11.5.1.tar.gz)
    ``` shell
        # tar -zxvf ntl-11.5.1.tar.gz
        cd ntl-11.5.1/src
        ./configure SHARED=on
        make
        make check #optional
        sudo make install
    ```

  * ### compile MP-HEAAN-Python (global install)
    ``` shell
      python3.10 setup.py build_ext -i
      sudo python3.10 setup.py install 
    ```

  * ### run the example
    * basic test
    ``` shell
      python3.10 tests/test-basic.py
    ```

  * ### FAQ
    * Problem: python3.10, ntl-11.5.1 are adopted for arm64. (e.g., ld: illegal thread local variable reference to regular symbol ZN3NTL17NTLThreadPool_ptrE for architecture x86_64; error: linker command failed; )
      Solve: Do not using 'brew install ntl', if its python version is 3.8 which is not adopted for M1. 
      
    * Problem: install ntl error: gmp version mismatch 
      Solve: cd gmp; sudo make uninstall; and install right version (gmp-6.2.1+NTL-11.5.1) 


## modify MP-HEAAN-Python and test the program
* ### rebuild libHEAAN.a (if modify HEAAN)
  ```shell
    cd HEAAN/lib
    make all
  ```
  
* ### rebuild HEAAN-Python
  * method 1: 
    ```shell
      sudo rm -r ./build
      sudo python3.10 setup.py install
    ```
  * method 2: 
    ```shell
      python3.10 rebuild.py # change the passwd in rebuild.py
    ```



