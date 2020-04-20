#/bin/sh

for i in "classes" "interfaces" "traits" "functions" "vars" "methods" "properties"
do
    for j in `cat ./keywords`
    do
        php -l "./src/${i}/${j}.php" >/dev/null 2&>1
        result=$?
        if [ $result -eq 0 ]; then
            successful='ok'
        else
            successful='error'
        fi
        printf '%s\t%s\t%s\t(%d)\n' "${i}"  "${j}" "${successful}" $result
    done
done
