CD\
CD C:\Users\tiago\OneDrive\Área de Trabalho\DTFBMigrator\MIGRACAO
SET ISC_USER=SYSDBA
"21\gbak.exe" -z -b -g -v -y 21.log C:\SUPERSYS10\DADOS\SUPERSYS.FDB stdout |^
"30\gbak.exe" -z -c -v -st t -y 30.log stdin SUPERSYS30.FDB -fix_fss_m WIN1252
