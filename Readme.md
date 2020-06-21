## temperature for raspberry pi, using shared library 

- build:
```
make
```

- test:
```
make test
```

- install (install to /usr/lib and /usr/include):
```
sudo make install
```

- clear:
```
make clear
```

- uninstall:
```
sudo make uninstall
```

- using shared library(after install):
```
gcc your_c_source_code -ltemptest -o your_ELF_name
```
