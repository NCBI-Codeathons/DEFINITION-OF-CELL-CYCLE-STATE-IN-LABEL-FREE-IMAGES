#!/bin/bash
module load gmic
module load parallel

outputFolder=/project/bioinformatics/shared/Tada/Hackathon/fullres_20X_50K_1Z/

mkdir $outputFolder/tiles_bgsub/
rm $outputFolder/tiles_bgsub/*
ls -v $outputFolder/bg_sub/*.tif | parallel gmic {} -s c -n 0,10000 -o[0]  $outputFolder/tiles_bgsub//{/.}_brightfield.tif,ushort  -o[1-3]  $outputFolder/tiles_bgsub/{/.}_RGB.tif,ushort


