#!/bin/bash
for integ in 'W'
do
    for ds in 128
    do
        for lsize in 64 128
        do
            for distance in 'mmd'
            do
                for beta in 15 50 100 
                do
                    for dtype in  'DR' 'IC' 'PAM' #'W' whole data 
                    do
                        for fold in 1 2 3 4 5 #0 whole data
                        do
                            python run_hvae.py --integration=${integ} --ds=${ds} --dtype=${dtype} --fold=${fold} --ls=${lsize} --distance=${distance} --beta=${beta} --writedir='results'
                        done
                    done
                done
            done
        done
    done
done
