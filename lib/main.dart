import 'package:flutter/material.dart';
import './screens/v_card_screen.dart';

void main() {
  runApp(VCardApp());
}

class VCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V-Card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: VCardScreen(),
    );
  }
}
