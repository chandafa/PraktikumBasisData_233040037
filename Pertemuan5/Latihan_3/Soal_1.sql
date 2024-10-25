CREATE TABLE jurusan (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    nama_jurusan BIGINT NOT NULL
);
GO

CREATE TABLE dosen_wali (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    NIP BIGINT NOT NULL,
    nama VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255),
    no_hp BIGINT
);
GO

CREATE TABLE mahasiswa (
    id BIGINT PRIMARY KEY IDENTITY(1,1),
    NPM INT NOT NULL,
    nama VARCHAR(255) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255),
    no_hp BIGINT,
    jurusan_id BIGINT,
    dosen_wali_id BIGINT,
    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
    FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id)
);
GO