SELECT 
A.id,A.kodebengkel,A.fasilitas,A.jumlah,A.kondisi,
CASE 
	WHEN A.kondisi=0 THEN 'Baik'
	WHEN A.kondisi=1 THEN 'Sedang'
	WHEN A.kondisi=2 THEN 'Rusak'
	ELSE '-' END tk_kondisi
 FROM fasilitas A