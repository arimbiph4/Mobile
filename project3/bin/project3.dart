import 'dart:io';

import 'package:project3/project3.dart' as project3;

void main(List<String> arguments) {

var fl = List<int>.filled(4,2);
fl[0] = 1;
fl[1] = 2;
fl[2] = 3;
fl[3] = 4;
//fl[4] = 5;

var gl=[1,2,3];
gl.add(18);
gl.remove(2);
stdout.writeln(gl);

  //print('Hello world: ${project3.calculate()}!');
}
