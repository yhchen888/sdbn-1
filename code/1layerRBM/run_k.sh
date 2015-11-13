#!/bin/bash
cd ../../

for i in `seq 542 542 90000`;
do
    python -m code.1layerRBM.cd_k 1 1000 542 cd $i
done

for file in /home/liuq/apt/2ndYear/sDBN/theta/*_e_*.npy
do
    echo $file
    python -m code.1layerRBM.recon_error $file >> log.txt
done



