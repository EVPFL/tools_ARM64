# MKLHS-Python
This is a Python wrapper for MKLHS library.
[MKLHS](./MKLHS) The Multi-key Linearly Homomorphic Signature Scheme is on the [paper](https://eprint.iacr.org/2019/830.pdf), which is implemented in the library [relic](https://github.com/relic-toolkit/relic).

## build MKLHS and run the example
  ```shell
  # pybind11
  cd pybind11
  mkdir build && cd build
  (pip3 install pytest)
  cmake ..
  make
  sudo make install

  # relic
  cd MKLHS/relic
  unzip src.zip 
  make
  (build "./target/")
    ## Q&A
      Problem: errors in building ./target
      solve: modify the MKLHS/relic/Makefile 
        change "/preset/arm64-pbc-bls12-381.sh" to other /preset/xx.sh

  # MKLHS
  cd MKLHS/lib
  make all 
  (build "libMKLHS.a")
    ## Q&A
      Problem: fatal error: 'relic.h' file not found
      solve: sudo make all 

  # MKLHS-Python
  sudo python3 setup.py install (global install)

  # test
  python3 test.py
```

## modify MKLHS-Python and test the program
```shell
  # relic (if modify MKLHS/relic/src)
  cd MKLHS/relic
  make
  ## Q&A
      Problem: errors happened
      General solve: rm -r ./target/; make

  # MKLHS (if modify MKLHS/src)
  cd MKLHS/lib
  make all
  
  # rebuild MKLHS-Python
  sudo rm -r ./build
  sudo python3.10 setup.py install

  # run test
  python3.10 test.py
```


