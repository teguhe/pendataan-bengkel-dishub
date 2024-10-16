SELECT *,
CASE 
	WHEN A.kecamatan=0 THEN 'Sidorejo'
	WHEN A.kecamatan=1 THEN 'Sidomukti'
	WHEN A.kecamatan=2 THEN 'Argomulyo'
	WHEN A.kecamatan=3 THEN 'Tingkir'
	ELSE '-' END tk_kecamatan,
CASE 
	WHEN A.jns_bengkel=0 THEN 'Mobil'
	WHEN A.jns_bengkel=1 THEN 'Motor'
	ELSE '-' END tk_jns_bengkel,
CASE 
	WHEN A.bentuk_usaha=0 THEN 'PT'
	WHEN A.bentuk_usaha=1 THEN 'CV'
	WHEN A.bentuk_usaha=2 THEN 'PO'
	WHEN A.bentuk_usaha=3 THEN 'PD'
	WHEN A.bentuk_usaha=4 THEN 'KOPERASI'
	ELSE '-' END tk_bentuk_usaha,
CONCAT(IF(MID(A.jns_layanan,1,1)=1,'Perbaikan ',''),
		 IF(MID(A.jns_layanan,2,1)=1,'Perawatan ',''),
		 IF(MID(A.jns_layanan,2,1)=1,'Variasi ',''),
		 IF(MID(A.jns_layanan,3,1)=1,'Sparepart ',''))
 tk_jns_layanan,
CONCAT(IF(MID(A.hari_kerja,1,1)=1,'Senin ',''),
		 IF(MID(A.hari_kerja,2,1)=1,'Selasa ',''),
		 IF(MID(A.hari_kerja,3,1)=1,'Rabu ',''),
		 IF(MID(A.hari_kerja,4,1)=1,'Kamis ',''),
		 IF(MID(A.hari_kerja,5,1)=1,'Jumat ',''),
		 IF(MID(A.hari_kerja,6,1)=1,'Sabtu ',''),
		 IF(MID(A.hari_kerja,7,1)=1,'Minggu ',''))
 tk_hari_kerja,
 (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1) IU_max,
 (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1) HO_max,
 (select nomor from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1) tIU_max,
 (select nomor from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1) tHO_max,
 npwp,
(select nomor from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1) nomorijin,
(select nomor from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1) nomorHO
FROM bengkel A
#LEFT JOIN perizinan B ON A.kodebengkel=B.kodebengkel
#where (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1)>0000-00-00