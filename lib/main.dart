import 'package:azkar/pages.dart';
import 'package:azkar/widgets.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _pages = [
    const Homepage(),
    const Praytime(),
    const Sebhapage()
  ];
  final List<String> _pagestext = [
    const Homepage().text,
    const Praytime().text,
    const Sebhapage().text
  ];
  int _index = 0;

//
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue

      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.

      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    // latitude = position.latitude;
    // longitude = position.longitude;
    return await Geolocator.getCurrentPosition();
  }

//
//
  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

//
//
  void _pageChanged(int i) {
    setState(() {
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppbar(text: _pagestext.elementAt(_index)),
        body: _pages.elementAt(_index),
        bottomNavigationBar: ConvexAppBar(
          //cornerRadius: 15,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          activeColor: const Color.fromRGBO(4, 46, 32, 1),
          color: const Color.fromRGBO(4, 46, 32, 1),
          items: const [
            TabItem(icon: Icons.book, title: 'الأذكار', fontFamily: 'arab'),
            TabItem(
                icon: Icons.access_time,
                title: 'مواقيت الصلاه',
                fontFamily: 'arab'),
            TabItem(icon: Icons.add, title: 'السبحه', fontFamily: 'arab'),
          ],
          initialActiveIndex: _index,
          onTap: _pageChanged,
        ),
        backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
      ),
    );
  }
}
