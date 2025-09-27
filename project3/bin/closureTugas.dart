import 'dart:io';

void main() {
  tugasClosureDiskon();
}
// TUGAS 4: Closure - Diskon Bertingkat
Function buatDiskonBertingkat() {
  var diskon = 0;
  
  return () {
    diskon += 5;
    return diskon;
  };
}

void tugasClosureDiskon() {
  var getDiskon = buatDiskonBertingkat();
  
  print("Diskon ke-1: ${getDiskon()}%");
  print("Diskon ke-2: ${getDiskon()}%");
  print("Diskon ke-3: ${getDiskon()}%");
  print("Diskon ke-4: ${getDiskon()}%");
  
  // Contoh penggunaan dengan harga
  print("\nContoh penerapan:");
  var hargaBarang = 100000;
  var diskonSaatIni = getDiskon();
  var hargaSetelahDiskon = hargaBarang - (hargaBarang * diskonSaatIni / 100);
  print("Harga: Rp $hargaBarang");
  print("Diskon: $diskonSaatIni%");
  print("Harga setelah diskon: Rp $hargaSetelahDiskon");
}