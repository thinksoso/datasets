declare -A dict
dict['tnews']=https://storage.googleapis.com/cluebenchmark/tasks/tnews_public.zip
dict['afqmc']=https://storage.googleapis.com/cluebenchmark/tasks/afqmc_public.zip
dict['iflytek']=https://storage.googleapis.com/cluebenchmark/tasks/iflytek_public.zip
dict['ocnli']=https://storage.googleapis.com/cluebenchmark/tasks/ocnli_public.zip
dict['cmnli']=https://storage.googleapis.com/cluebenchmark/tasks/cmnli_public.zip
dict['cluewsc2020']=https://storage.googleapis.com/cluebenchmark/tasks/cluewsc2020_public.zip
dict['csl']=https://storage.googleapis.com/cluebenchmark/tasks/csl_public.zip
dict['cmrc2018']=https://storage.googleapis.com/cluebenchmark/tasks/cmrc2018_public.zip
dict['drcd']=https://storage.googleapis.com/cluebenchmark/tasks/drcd_public.zip
dict['chid']=https://storage.googleapis.com/cluebenchmark/tasks/chid_public.zip
dict['c3']=https://storage.googleapis.com/cluebenchmark/tasks/c3_public.zip

for key in $(echo ${!dict[*]})
do
    wget ${dict[$key]}
    unzip ${key}"_public.zip" -d ${key}
    rm ${key}"_public.zip"
done
