import 'dart:io';

void main() {
  tugasMapBarang();
}

// TUGAS 3: Map - Data Barang (Kode, Nama, Harga)
void tugasMapBarang() {
  var barang1 = {
    "kode": "BRG001",
    "nama": "Laptop",
    "harga": 7500000
  };
  
  var barang2 = {
    "kode": "BRG002",
    "nama": "Mouse",
    "harga": 150000
  };
  
  var barang3 = {
    "kode": "BRG003",
    "nama": "Keyboard",
    "harga": 350000
  };
  
  print("Barang 1: $barang1");
  print("Barang 2: $barang2");
  print("Barang 3: $barang3");
  
  print("\nDetail Barang:");
  print("${barang1['kode']} - ${barang1['nama']}: Rp ${barang1['harga']}");
  print("${barang2['kode']} - ${barang2['nama']}: Rp ${barang2['harga']}");
  print("${barang3['kode']} - ${barang3['nama']}: Rp ${barang3['harga']}");
}