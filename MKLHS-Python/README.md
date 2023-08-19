# MKLHS-Python (ARM64 VERSION)
This is a Python wrapper for MKLHS library for ARM64.
[MKLHS](./MKLHS) The Multi-key Linearly Homomorphic Signature Scheme is on the [paper](https://eprint.iacr.org/2019/830.pdf), which is implemented in the library [relic](https://github.com/relic-toolkit/relic).


## build MKLHS and run the example
  * ### Recommend: Clang++ (>= 10.0) or GNU G++ (>= 9.4), CMake (>= 3.16); Python 3.10; MAC OS (M1)

  * ### install pybind11
    ``` shell
        python3.10 -m pip install -r requirements.txt
    ```

  * ### install relic (build "./target/")
    ``` shell
        cd MKLHS-Python/MKLHS/relic
        unzip src.zip 
        make
    ```

  * ### compile libMKLHS.a
    ``` shell
        cd MKLHS-Python/MKLHS/lib
        make all 
    ```

  * ### compile MKLHS-Python (global install)
    ``` shell
        cd MKLHS-Python/
        sudo python3.10 setup.py install
    ```

  * ### run the example
    ``` shell
        python3.10 test.py
    ```

  * ### FQA
    Problem: errors in building ./target
    Solve: 
      modify the MKLHS/relic/Makefile: change "/preset/arm64-pbc-bls12-381.sh" to other /preset/xx.sh



## modify MKLHS-Python and test the program
* ### rebuild librelic_s.a (if modify MKLHS/relic/src)
    ``` shell
        cd MKLHS/relic
        make
    ```

* ### rebuild libMKLHS.a (if modify MKLHS)
    ``` shell
        cd MKLHS/lib
        make all
    ```
* ### rebuild LHH-Python
    ``` shell
        sudo rm -r ./build 
        sudo python3.10 setup.py install
    ```


