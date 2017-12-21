#!/bin/bash
if apachectl -t ; then
	exec apache2ctl -DFOREGROUND
else
	echo "ERROR EN LA CONFIGURACION"
fi
exit 0

