# unicaml

## build
```
# clone this repository...
$ git clone https://github.com/rikatze/unicaml

# and cd.
$ cd unicaml

# now let's run tests.
# first, edit SIM and ASM in ./prepare.sh to point the root directory of
# our assembler (https://github.com/rikatze/suiteki) and our simluator
# (https://github.com/forestaa/cpu_simulator).
# e.g.
$ head -n 5 ./prepare.sh
#!/bin/bash

ASM=../suiteki # the root dir of the assembler
SIM=../sim # the root dir of the simulator

# okay, now build them and create symbolic links for make:
# (note that you need to run this script at the root of this repository)
$ ./prepare.sh

# then make unicaml and test them by running `make`:
$ make
(output follows..)
```

