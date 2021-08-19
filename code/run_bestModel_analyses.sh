for integ in 'W'
do
    for model in 'HVAE'
    do
        for label in 'DR' 'PAM' 'IC'
        do
            python analyse_representations.py --integration=${integ} --model=${model} --dtype=${label} --numfolds=5 --resdir='results' --writedir='BestModel_Analyses' --XGB='True' --NB='True' --SVM='True' --RF='True'
        done
    done
done


