SELECT *
FROM bengkel A
#LEFT JOIN perizinan B ON A.kodebengkel=B.kodebengkel
#where (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1)>0000-00-00