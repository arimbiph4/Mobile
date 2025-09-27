import 'dart:io';

void main() {
  tugasGrowableList();
}

void tugasGrowableList() {
  var mahasiswa = ["Arimbi", "Andhika", "Putri"];
  mahasiswa.add("Putra");
  mahasiswa.add("Dina");
  
  print("Daftar Mahasiswa: $mahasiswa");
  print("Jumlah data: ${mahasiswa.length}");
}
