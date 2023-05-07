void main(List<String> arguments) {
  Kucing kucingku = Kucing();

  kucingku.nama = 'Lulung';
  kucingku.umur = 9;

  String pesan = 'Kucingku namanya ' +
      kucingku.nama +
      ', umurnya ' +
      kucingku.umur.toString() +
      ' tahun';

  print(pesan);
}

class Kucing {
  String nama = '';
  int? umur;
}
