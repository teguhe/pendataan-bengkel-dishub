SELECT 
A.id,A.kodebengkel,A.nama,A.alamat,A.pendidikan,
CASE 
	WHEN A.pendidikan=0 THEN 'SD'
	WHEN A.pendidikan=1 THEN 'SMP'
	WHEN A.pendidikan=2 THEN 'SMA/SMK'
	WHEN A.pendidikan=3 THEN 'D1'
	WHEN A.pendidikan=4 THEN 'D2'
	WHEN A.pendidikan=5 THEN 'D3'
	WHEN A.pendidikan=6 THEN 'D4'
	WHEN A.pendidikan=7 THEN 'S1'
	WHEN A.pendidikan=8 THEN 'S2'
	ELSE '-' END tk_pendidikan
 FROM tenagakerja A