import 'dart:io';

void main() {
  tugasSetOperations();
}

// TUGAS 2: Set Union & Intersection (Data String)
void tugasSetOperations() {
  var setA = {"apel", "jeruk", "mangga", "pisang"};
  var setB = {"mangga", "anggur", "pisang", "melon"};
  
  print("Set A: $setA");
  print("Set B: $setB");
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");
}