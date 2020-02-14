library executable_module;

import 'dart:io';

createLog() async {
  final dir = Directory.current;
  final file = File(dir.path + Platform.pathSeparator + "log.txt");
  await file.create();
  await file.writeAsString(DateTime.now().toIso8601String());
}
