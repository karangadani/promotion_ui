import 'package:flutter/material.dart';
import 'package:promotion_ui/provider/loyaltyrules.dart';
import 'package:promotion_ui/screens/promotion_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.pink),
  home: ChangeNotifierProvider.value(
      value: Rules(),
      child: PromotionScreen()),
  ),
);
