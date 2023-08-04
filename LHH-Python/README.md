# LHH-Python
This is a Python wrapper for LHH library.
[LHH](./LHH) Linearly Homomorphic Hash supports linear operations on its output, allowing for efficient verification of linear
combinations of data without needing to access the original data. This scheme  is based on the LHH funtion used in [paper](https://eprint.iacr.org/2022/1073) and the library [VeriFL](https://github.com/ErwinSCat/VeriFL)

## build LHH and run the example
  ```shell
  # openssl

  # pybind11
  cd pybind11
  mkdir build && cd build
  cmake ..
  make
  sudo make install

  # LHH
  cd LHH/lib
  make all 
  (build "libLHH.a")

  # LHH-Python
  cd LHH-Python/
  sudo python setup.py install (global install)

  # test
  python test.py

```

## modify LHH-Python and test the program
```shell
  # LHH (if modify LHH)
  cd LHH/lib
  make all

  # rebuild LHH-Python
  method 1: 
  sudo rm -r ./build 
  sudo python setup.py install
  method 2: 
  python build.py (modify 'sudoPassword' in build.py)

```


