# LHH-Python (ARM64 VERSION)
This is a Python wrapper for LHH library for ARM64.
[LHH](./LHH) Linearly Homomorphic Hash supports linear operations on its output, allowing for efficient verification of linear
combinations of data without needing to access the original data. This scheme  is based on the LHH funtion used in [paper](https://eprint.iacr.org/2022/1073) and the library [VeriFL](https://github.com/ErwinSCat/VeriFL)

## build LHH and run the example
  * ### Recommend: Clang++ (>= 10.0) or GNU G++ (>= 9.4), CMake (>= 3.16); Python 3.10; MAC OS (M1)

  * ### install openssl
    Mac Download:
      ``` shell
          brew install openssl@1.1
      ```

  * ### install pybind11
    ``` shell
        python3.10 -m pip install -r requirements.txt
    ```

  * ### compile libLHH.a
    ``` shell
        cd LHH-Python/LHH/lib
        make all 
    ```

  * ### compile LHH-Python (global install)
    ``` shell
        cd LHH-Python/
        sudo python3.10 setup.py install
    ```
    
  * ### run the example
    ``` shell
        python3.10 test.py
    ```

## modify LHH-Python and test the program
  * ### rebuild libLHH.a (if modify LHH)
    ``` shell
        cd LHH/lib
        make all
    ```

  * ### rebuild LHH-Python
    * method 1: 
    ``` shell
        sudo rm -r ./build 
        sudo python3.10 setup.py install
    ```

    * method 2: 
    ``` shell
        python3.10 rebuild.py # modify 'sudoPassword' in rebuild.py
    ```

