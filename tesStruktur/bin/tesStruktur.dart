import 'package:tesStruktur/tesStruktur.dart' as tesStruktur;
import 'dart:math';

void main(List<String> arguments) {
  final x = [6, 8, 1, 4, 7, 2];
  num tambah = 0;
  print('list ${x}');
  print('penjumlahan isi array/list');
  for (num e in x) {
    tambah += e;
  }
  print(tambah);
  print('Sorting terkecil ke terbesar');
  x.sort((a, b) => a.compareTo(b));
  print(x);
  print('Angka Terbesar');
  print('MAX: ${findMax(x)}');
  print('Angka tertinggi ketiga');
  var ma= x.length;

  print(angkaTiga(x,ma));

}
int findMax(List<int> x) {
  return x.reduce(max);
}
int angkaTiga(List a, int total){
  int temp;
  for (int i = 0; i < total; i++)
  {
    for (int j = i + 1; j < total; j++)
    {
      if (a[i] > a[j])
      {
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
  return a[total-3];
}