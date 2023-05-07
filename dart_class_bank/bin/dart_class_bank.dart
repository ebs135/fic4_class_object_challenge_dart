void main(List<String> arguments) {
  Nasabah nasabah1 = Nasabah('John', 'California');
  Nasabah nasabah2 = Nasabah('Doe', 'Washington');

  // Transaksi nasabah1
  print(
      '------------------------\nData transaksi nasabah1:\n------------------------');
  print(
      'Data Nasabah:\nNama : ${nasabah1.nama}\nSaldo awal : ${nasabah1.saldo}\nSimpan : ${nasabah1.simpan(1000)}\nSaldo akhir : ${nasabah1.saldo}\n');
  print(
      'Data Nasabah:\nNama : ${nasabah1.nama}\nSaldo awal : ${nasabah1.saldo}\nAmbil : ${nasabah1.ambil(500)}\nSaldo akhir : ${nasabah1.saldo}\n');
  print(
      'Data Nasabah:\nNama : ${nasabah1.nama}\nSaldo awal : ${nasabah1.saldo}\nSimpan : ${nasabah1.simpan(1500)}\nSaldo akhir : ${nasabah1.saldo}\n------------------------');

  // Transaksi nasabah2
  print(
      '------------------------\nData transaksi nasabah2:\n------------------------');
  print(
      'Data Nasabah:\nNama : ${nasabah2.nama}\nSaldo awal : ${nasabah2.saldo}\nSimpan : ${nasabah2.simpan(15000)}\nSaldo akhir : ${nasabah2.saldo}\n');
  print(
      'Data Nasabah:\nNama : ${nasabah2.nama}\nSaldo awal : ${nasabah2.saldo}\nAmbil : ${nasabah2.ambil(5000)}\nSaldo akhir : ${nasabah2.saldo}\n');
  print(
      'Data Nasabah:\nNama : ${nasabah2.nama}\nSaldo awal : ${nasabah2.saldo}\nSimpan : ${nasabah2.simpan(1500)}\nSaldo akhir : ${nasabah2.saldo}\n------------------------');
}

class Nasabah {
  String? nama;
  String? alamat;
  int? saldo;

  Nasabah(this.nama, this.alamat) {
    saldo = 0;
    print(
        '-----------------------------\nData nasabah berhasil dibuat:\n-----------------------------\nNama: $nama\nALamat : $alamat\nSaldo : $saldo\n-----------------------------');
  }

  int? simpan(int? jumlah) {
    saldo = saldo! + jumlah!;
    return jumlah;
  }

  int? ambil(int? jumlah) {
    saldo = saldo! - jumlah!;
    return jumlah;
  }
}
