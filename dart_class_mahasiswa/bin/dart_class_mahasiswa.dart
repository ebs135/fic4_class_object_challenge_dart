void main(List<String> arguments) {
  Mahasiswa mahasiswa = Mahasiswa();
  print(
      'Nama : ${mahasiswa.nama}\nJurusan : ${mahasiswa.jurusan}\nAngkatan : ${mahasiswa.angkatan}\n');

  Mahasiswa mahasiswaBaru = Mahasiswa.baru('Doe', 'Teknik Informatika', 2021);
  print(
      'Nama : ${mahasiswaBaru.nama}\nJurusan : ${mahasiswaBaru.jurusan}\nAngkatan : ${mahasiswaBaru.angkatan}\n');

  Mahasiswa mahasiswaJSON = Mahasiswa.json({
    'nama': 'John Doe',
    'jurusan': 'Software Engineering',
    'angkatan': 2022,
  });
  print(
      'Nama : ${mahasiswaJSON.nama}\nJurusan : ${mahasiswaJSON.jurusan}\nAngkatan : ${mahasiswaJSON.angkatan}');
}

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa() {
    print('Ini contoh default constructor');
    nama = 'John';
    jurusan = 'Sistem Informasi';
    angkatan = 2020;
  }

  Mahasiswa.baru(this.nama, this.jurusan, this.angkatan) {
    print('Ini contoh parameterized constructor');
  }

  Mahasiswa.json(Map<String, dynamic> data) {
    print('Ini contoh named JSON parameterized constructor');
    nama = data['nama'];
    jurusan = data['jurusan'];
    angkatan = data['angkatan'];
  }
}
