import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injection/dependency_injection.dart';

void main() {
  Injector.configure(Flavor.PRO);
  runApp( new App() );
}
