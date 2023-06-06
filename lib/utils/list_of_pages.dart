import 'package:dana_clone/pages/history_page.dart';
import 'package:dana_clone/pages/home_page.dart';
import 'package:dana_clone/pages/me_page.dart';
import 'package:dana_clone/pages/pocket_page.dart';
import 'package:flutter/material.dart';

class ListOfPages {
  static List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PocketPage(),
    const MePage(),
  ];
}
