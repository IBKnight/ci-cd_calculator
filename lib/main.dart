import 'package:ci_cd_calculator/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_size/window_size.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  setWindowMaxSize(const Size(678, 860));
  setWindowMinSize(const Size(678, 860));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}
