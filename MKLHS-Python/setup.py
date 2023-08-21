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
        'MKLHS',
        ['src/wrapper.cpp'],
        include_dirs=['/usr/include/python3.10', 'pybind11/include', '/usr/local/include', './MKLHS/src', './MKLHS/relic/src/include', './MKLHS/relic/target/include'],
        language = 'c++',
        extra_compile_args=cpp_args,
        extra_objects=['/usr/local/lib/libgmp.a', './MKLHS/lib/libMKLHS.a', './MKLHS/relic/target/lib/librelic_s.a'], # both lib need compiled with -fPIC
    ),
]

setup(
    name='MKLHS',
    version='1.0.0',
    description='Python wrapper for MKLHS',
    url='',
    license='MIT',
    ext_modules=ext_modules,
)
