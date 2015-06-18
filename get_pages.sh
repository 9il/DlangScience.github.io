set -e

for pageName in dstats NetCDF-D cblas dstats PydMagic clFFT-D libcerf OpenMPI parallel_algorithm; do
    mkdir -p ${pageName}
    if [ -f repos/${pageName}/site/readme_as_index ]
    then
        echo -e '---\nlayout: default\n---\n' | cat - repos/${pageName}/README.md > ${pageName}/index.md
    fi
    cp -r repos/${pageName}/site ${pageName}
done

