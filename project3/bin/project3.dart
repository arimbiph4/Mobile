import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {

//fixlist
// var fl = List<int>.filled(4,2);
// fl[0] = 1;
// fl[1] = 2;
// fl[2] = 3;
// fl[3] = 4;
// //fl[4] = 5;

//growlist
// var gl=[1,2,3];
// gl.add(18);
// gl.remove(2);
// stdout.writeln(gl);

//setNilai
// var setNilai1=<int>{1,2,3,4};
// var setNilai2=<int>{3,3,4,5};
// print(setNilai2);
// print(setNilai1.union(setNilai2));
// print(setNilai1.intersection(setNilai2));

// var setNilai1 =<String>{};
//   //var setNilai2 =<int>{1,2,3};
 
//  stdout.writeln("Jumlah data setNilai1 = ");
//   String? input1 = stdin.readLineSync();
//   int jumlah1 = (int.tryParse(input1 ?? '')) ?? 0;
//   for (var i = 0; i < jumlah1; i++) {
//     stdout.writeln("Masukkan Nilai Ke-${i+1} = ");
//     String? inputNilai = stdin.readLineSync();
//     String nilai=inputNilai ?? '0';
//     setNilai1.add(nilai);
//   }

// var NilaiList = setNilai1.toList();
// //print(setNilai1.elementAt(0));
//   print(NilaiList.elementAt(1));

//print('Hello world: ${project3.calculate()}!');

//map
// var sudah = {'nim': "101", 'nama': "andi", 'umur': 20, 'nim': "102"};
// print(sudah);
// print(sudah['nama']);
// var opo = {
//   'nim': ["101", "102"],
//   'nama': ["andi", "budi"],
//   'umur': [20,21],
// };
// print(opo);
// print(opo['nama']![1]);

  
//record
// void main(){
//   var mahasiswa = ("Arimbi", 20, true);
//   print(mahasiswa);
//   print(mahasiswa.$1);
//   print(mahasiswa.$2);

//   //named record
//   var mhs = (nama: "Arimbi", umur : 20);
//   print("Nama : ${mhs.nama}, Umur : ${mhs.umur}");


//function
// void sapa(String nama, int umur){
//   print("Halo namaku $nama, umurku $umur tahun");
// }

// void main() {
//   sapa("Arimbi", 20); //parameternya nama -> "Arimbi", umur -> 20
// }


//Anonymous Function
// void main(){
//   var list = [1, 2, 3];
//   list.forEach((angka) {
//     print("Angka: $angka");
//   });
// }

//lexicalscope
// void main(){
//   var x = 10;
//   void tampil(){
//     print(x);   //bisa akses x meskepin x ada diluar
//   }

//   tampil();
// }

//closure
Function buatCounter(){
  var hitung = 0;

  return() {
    hitung++;
    return hitung;
  };
}

void main(){
  var counter = buatCounter();
  print(counter()); //1
  print(counter()); //2
  print(counter()); //3
  
}
}



