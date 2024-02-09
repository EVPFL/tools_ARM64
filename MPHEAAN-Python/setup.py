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
        'HEAAN',
        ['src/base64.cpp', 'src/wrapper.cpp'],
        include_dirs=['/usr/include/python3.10', 'pybind11/include', '/usr/local/include', './MP-HEAAN/src'],
        language='c++',
        extra_compile_args=cpp_args,
        extra_objects=['/usr/local/lib/libntl.dylib', './MP-HEAAN/lib/libHEAAN.a'], # both lib need compiled with -fPIC
    ),
]

setup(
    name='HEAAN',
    version='3.1.0',
    description='Python wrapper for MP-HEAAN',
    url='',
    license='MIT',
    ext_modules=ext_modules,
)
