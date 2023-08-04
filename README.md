# tools
Python wrapper for xMP-CKKS, MKLHS, LHH

## Usage: Compile libraries: LHH,MKLHS,MPHEAAN

    Please read their README.md in corresponding directories firstly.

  * ### pybind11 (mkTPFL/srcs-cpython/pybind11)
    ``` shell
        cd mkTPFL/srcs-cpython/pybind11
        mkdir build && cd build
        cmake ..
        make
        sudo make install
    ```


  * ### MPHEAAN (mkTPFL/srcs-cpython/MPHEAAN-Python)
    (the compiled python library is named HEAAN)

    install GMP and NTL first
    Download links:
        GMP: https://gmplib.org/#DOWNLOAD
        NTL: https://libntl.org/download.html

    ``` shell
        # GMP-6.2.0
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
    ```
    #### Q&A
        problem: install ntl error: gmp version mismatch 
        solve: cd gmp; sudo make uninstall; and install right version (gmp-6.2.0+NTL-11.4.3) 

    ```shell
        cd mkTPFL/srcs-cpython/MKLHS-Python

        # MP-HEAAN
        cd MP-HEAAN/lib
        make all

        # MP-HEAAN-Python (global install)  
        python setup.py build_ext -i
        sudo python setup.py install 

        # test
        python tests/test-basic.py
    ```


  * ### LHH (mkTPFL/srcs-cpython/LHH-Python)
    install openssl first
    Mac Download:
        ``` shell
        brew install openssl@1.1
        ```

    ``` shell
        cd mkTPFL/srcs-cpython/LHH-Python

        # LHH (build "libLHH.a")
        cd LHH/lib
        make all 

        # LHH-Python (global install)
        cd LHH-Python/
        sudo python setup.py install

        # test
        python test.py
    ```
    #### Q&A
        problem: install ntl error: gmp version mismatch 
        solve: cd gmp; sudo make uninstall; and install right version (gmp-6.2.0+NTL-11.4.3) 


  * ### MKLHS (mkTPFL/srcs-cpython/MKLHS-Python)
    ``` shell
        cd mkTPFL/srcs-cpython/MKLHS-Python

        # relic (build "./target/")
        cd MKLHS/relic
        unzip src.zip 
        make
    ```
    #### Q&A
        Problem: errors in building ./target
        solve: modify the MKLHS/relic/Makefile 
        change "/preset/arm64-pbc-bls12-381.sh" to other /preset/xx.sh

    ``` shell
        # MKLHS (build "libMKLHS.a")
        cd MKLHS/lib
        make all
    ```
    #### Q&A
        Problem: fatal error: 'relic.h' file not found
        solve: sudo make all 

     ``` shell
        # MKLHS-Python (global install)
        cd MKLHS-Python
        sudo python setup.py install 

        # test
        python test.py