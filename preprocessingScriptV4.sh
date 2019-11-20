#!/bin/bash
module load gmic
module load parallel

outputFolder=/project/bioinformatics/shared/Tada/Hackathon/fullres_20X_50K_1Z/
mkdir -p $outputFolder
rm -r $outputFolder/*

mkdir $outputFolder/tiffs/
ls -v *20X_50K*.nd2 | parallel bfconvert {} $outputFolder/tiffs/{/.}_serie_%s.tif

# Dealing with the usual nd2 weird stuff (2 useless channels)
mkdir $outputFolder/4_channel_stacks/
rm $outputFolder/4_channel_stacks/*
ls -v $outputFolder/tiffs/*.tif | parallel  gmic {} -a z -s c -k[0] -s z -k[-4--1] -a c -o $outputFolder/4_channel_stacks/{/}

# Resizing and sub bg 
mkdir $outputFolder/bg_sub/
rm $outputFolder/bg_sub/*
ls -v $outputFolder/4_channel_stacks/*.tif | parallel -j40  gmic {} --median 50 -- -o $outputFolder/bg_sub/{/}

mkdir $outputFolder/views_bgsub/
ls -v $outputFolder/4_channel_stacks/*.tif | parallel gmic {} -s c -to_rgb[0] -n 0,255 -a[1-3] c  -resize 25%,25% -a x -o $outputFolder/views_bgsub/{/.}_raw.png
ls -v $outputFolder/bg_sub/*.tif | parallel gmic {} -s c -to_rgb[0] -n 0,255 -a[1-3] c -resize 25%,25% -a x -o $outputFolder/views_bgsub/proc_{/.}_proc.png


