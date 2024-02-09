from distutils.core import setup, Extension
from distutils import sysconfig

cfg_vars = sysconfig.get_config_vars()
for key, value in cfg_vars.items():
    if type(value) == str:
        cfg_vars[key] = value.replace('-Wstrict-prototypes', '')
        cfg_vars[key] = value.replace('x86_', 'arm')

cpp_args = ['-std=c++11']

ext_modules = [
    Extension(
        'LHH',
        ['src/wrapper.cpp'],
        # include_dirs=['/usr/include/python3.10', 'pybind11/include', '/usr/local/include', 'LHH/src'],
        include_dirs=['/usr/include/python3.10', 'pybind11/include', 'LHH/src'],
        language='c++',
        extra_compile_args=cpp_args,
        extra_objects=['/usr/local/lib/libcrypto.a', '/usr/local/lib/libssl.a', './LHH/lib/libLHH.a'], # both lib need compiled with -fPIC
        # extra_objects=['./LHH/lib/libLHH.a'], 
    ),
]

setup(
    name='LHH',
    version='1.0.0',
    description='Python wrapper for LHH',
    url='',
    license='MIT',
    ext_modules=ext_modules,
)
