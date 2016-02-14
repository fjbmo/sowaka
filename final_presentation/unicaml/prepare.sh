#!/bin/bash

ASM=../../assembli/suiteki # the root dir of the assembler
SIM=../../simulator/cpu_simulator # the root dir of the simulator

cd $ASM
cabal build
cd - > /dev/null

echo 'Building simulator...'
cd $SIM
make
cd -> /dev/null

echo 'Creating symbolic links for make...'
ln -sf $ASM/dist/build/suiteki/suiteki ./suiteki
ln -sf $ASM/lib ./lib
ln -sf $SIM/sim ./sim
