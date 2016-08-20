#!/bin/bash
echo 'Ejecutando: create_database_proyecto.sh'
sql1=userdbsigma4c.sql
sql2=sigma4c.sql


if echo '\connect sigma4c; SELECT * FROM public.parametro;' | sudo psql -U postgres&>/dev/null;then
  echo 'La base de datos ya está creada. Nada que hacer.'
else

cp $sql1 /tmp
cp $sql2 /tmp
scriptsql1=/tmp/$sql1
scriptsql2=/tmp/$sql2
sudo chown postgres:postgres $scriptsql1
sudo chown postgres:postgres $scriptsql2
sudo su postgres -c "
cd /tmp
psql -f $scriptsql1
psql -f $scriptsql2 -d sigma4c
"
fi
