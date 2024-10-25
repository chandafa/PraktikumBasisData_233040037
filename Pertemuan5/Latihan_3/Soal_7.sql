-- step 1, cek nama foreign key nya
SELECT 
    tc.constraint_name, 
    tc.table_name, 
    kcu.column_name, 
    ccu.table_name AS foreign_table_name, 
    ccu.column_name AS foreign_column_name
FROM 
    information_schema.table_constraints AS tc 
    JOIN information_schema.key_column_usage AS kcu
      ON tc.constraint_name = kcu.constraint_name
    JOIN information_schema.constraint_column_usage AS ccu
      ON ccu.constraint_name = tc.constraint_name
WHERE 
    tc.table_name = 'mahasiswa' AND tc.constraint_type = 'FOREIGN KEY';

-- step 2, ubah foreign key nya
ALTER TABLE mahasiswa
DROP CONSTRAINT FK__mahasiswa__jurus__534D60F1;  

ALTER TABLE mahasiswa
ADD CONSTRAINT FK__mahasiswa__jurus__534D60F1 FOREIGN KEY (jurusan_id) REFERENCES jurusan(id) ON DELETE CASCADE;

ALTER TABLE mahasiswa
DROP CONSTRAINT FK__mahasiswa__dosen__5441852A; 

ALTER TABLE mahasiswa
ADD CONSTRAINT FK__mahasiswa__dosen__5441852A FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id) ON DELETE CASCADE;

-- step 3, hapus data
DELETE FROM mahasiswa
WHERE id IN (1, 2, 3, 4, 5);