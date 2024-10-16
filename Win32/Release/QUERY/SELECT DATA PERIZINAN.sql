SELECT 
A.id,A.kodebengkel,A.namaizin,A.nomor,A.tanggal,A.izin,
CASE 
	WHEN A.namaizin=0 THEN concat('IZIN USAHA - ',A.izin)
	WHEN A.namaizin=1 THEN concat('HO - ',A.nomor)
	WHEN A.namaizin=2 THEN concat('IZIN LAINNYA - ',A.izin)
	ELSE '-' END tk_izin,
DATE_FORMAT(A.tanggal,'%d-%m-%Y') tanggalakhir
 FROM perizinan A