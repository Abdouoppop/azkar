import 'package:azkar/azkar_pagesa.dart';
import 'package:azkar/widgets.dart';
import 'package:flutter/material.dart';
import 'package:adhan/adhan.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:geocoding/geocoding.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  final String text = "الأذكار";
  //
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppbar(text: 'الأذكار'),
      body: Stack(
        children: [
          ///

          ///
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ///
          ///
          SizedBox(
            width: 500,
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///
                const SizedBox(height: 50),

                ///--1
                CustomContainer1(
                    imagePath: 'images/sunrise_10701470.png',
                    text: 'أذكار الصباح',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AzkarElsabah()));
                    }),

                ///
                const SizedBox(height: 30),

                ///--2
                CustomContainer1(
                    imagePath: 'images/wake-up_804509.png',
                    text: 'أذكار الاستيقاظ',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Azkaralestekaz()));
                    }),

                ///
                const SizedBox(height: 30),

                ///--3
                CustomContainer1(
                    imagePath: 'images/bed-time_12178752.png',
                    text: 'أذكار النوم',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Azkaralnuom()));
                    }),

                ///
                const SizedBox(height: 30),

                ///--4
                CustomContainer1(
                    imagePath: 'images/moon_8381943.png',
                    text: 'أذكار المساء',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Azkaralnuom()));
                    }),

                ///
                const SizedBox(height: 30),

                ///--5
                CustomContainer1(
                    imagePath: 'images/koran_384434.png',
                    text: 'أدعية قرآنية',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AdeaQurania()));
                    }),

                ///
                const SizedBox(height: 30),

                ///--6
                CustomContainer1(
                    imagePath: 'images/praying_3858798.png',
                    text: 'اذكار الصلاة',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Azkaralsalah()));
                    }),

                ///
                const SizedBox(height: 30),

                ///
              ],
            )),
          ),
          // bottomNavigationBar: BottomNavigationBar(items: [] )
        ],
      ),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

class Sebhapage extends StatefulWidget {
  const Sebhapage({super.key});
  final String text = "السبحه";

  @override
  State<Sebhapage> createState() => _SebhapageState();
}

class _SebhapageState extends State<Sebhapage> {
  int i = 0;
//
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
        // appBar: const CustomAppbar(text: 'السبحه'),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //
          //
          //
          //
          //
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              const SizedBox(
                height: 40,
              ),

              ///
              const Text('عدد التسبيحات',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'arab')),

              ///
              const SizedBox(
                height: 20,
              ),

              ///
              Text(
                '$i',
                style: const TextStyle(fontSize: 60, color: Colors.yellow),
              ),

              const SizedBox(height: 40),

              ///
              ///-- (+)
              Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.yellow, width: 3)),
                  child: IconButton(
                    color: Colors.yellow,
                    iconSize: 120,
                    onPressed: () {
                      setState(() {
                        i++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  )),

              ///
              ///
              const SizedBox(
                height: 40,
              ),

              ///
              ///-- (-)
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.white, width: 3)),
                child: IconButton(
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      i = 0;
                    });
                  },
                  icon: const Icon(
                    Icons.refresh_outlined,
                    color: Color.fromRGBO(4, 46, 32, 1),
                  ),
                ),
              ),

              ///
              ///
              const SizedBox(
                height: 40,
              ),
            ],
          )),

          ///
          ///
          ///
          ///
          ///
        ]));
  }
}

class Praytime extends StatefulWidget {
  const Praytime({super.key});
  final String text = "مواقيت الصلاة";
  @override
  State<Praytime> createState() => _PraytimeState();
}

class _PraytimeState extends State<Praytime> {
//
//
  double latitude = 0;
  double longitude = 0;
  String country = '';
  String locality = '';

  @override
  void initState() {
    super.initState();
    _orange();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _orange() async {
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
    _orangeloca();

    setState(() {});
  }

  void _orangeloca() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);
    country = placemarks[0].country!;
    locality = placemarks[0].locality!;
    setState(() {});
  }

//
//
  List<String> pray() {
    final myCoordinates = Coordinates(
        latitude, longitude); // Replace with your own location lat, lng.
    final params = CalculationMethod.egyptian.getParameters();
    params.madhab = Madhab.shafi;
    final prayerTimes = PrayerTimes.today(myCoordinates, params);

    return [
      prayerTimes.fajr.toString().split('').getRange(11, 16).join(),
      prayerTimes.sunrise.toString().split('').getRange(11, 16).join(),
      prayerTimes.dhuhr.toString().split('').getRange(11, 16).join(),
      prayerTimes.asr.toString().split('').getRange(11, 16).join(),
      prayerTimes.maghrib.toString().split('').getRange(11, 16).join(),
      prayerTimes.isha.toString().split('').getRange(11, 16).join()
    ];
  }

//
//
//
  final _today = HijriCalendar.now();
  final Map<String, String> days = {
    'Sunday': 'الاحد',
    'Monday': 'الاثنين',
    'Tuesday': 'الثلاثاء',
    'Wednesday': 'الاربعاء',
    'Thursday': 'الخميس',
    'Friday': 'الجمعة',
    'Saturday': 'السبت',
  };
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///
          ///
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ///
          ///
          ///
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //

                //
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(country,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 32,
                              fontFamily: 'arab')),
                      Text(days[_today.getDayName()]!,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 30,
                              fontFamily: 'arab'))
                    ]),
                //
                //
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 173,
                          child: Text(locality,
                              style: const TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 32,
                                  fontFamily: 'arab'))),
                      Text(_today.toString(),
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                          ))
                    ]),
                //
                //
                const SizedBox(
                  height: 10,
                ),
                //
                //
                Expanded(
                    child: Container(
                        height: 480,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.yellow, width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pray()[0],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                        )),
                                    const Text('الفجر',
                                        style: TextStyle(
                                            color: Color.fromRGBO(4, 46, 32, 1),
                                            fontSize: 38,
                                            fontFamily: 'arab'))
                                  ]),
                              //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(pray()[1],
                                      style: const TextStyle(
                                        color: Color.fromRGBO(4, 46, 32, 1),
                                        fontSize: 38,
                                      )),
                                  const Text('الشروق',
                                      style: TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                          fontFamily: 'arab'))
                                ],
                              ),
                              //
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pray()[2],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                        )),
                                    const Text('الظهر',
                                        style: TextStyle(
                                            color: Color.fromRGBO(4, 46, 32, 1),
                                            fontSize: 38,
                                            fontFamily: 'arab'))
                                  ]),
                              //
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pray()[3],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                        )),
                                    const Text('العصر',
                                        style: TextStyle(
                                            color: Color.fromRGBO(4, 46, 32, 1),
                                            fontSize: 38,
                                            fontFamily: 'arab'))
                                  ]),
                              //
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pray()[4],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                        )),
                                    const Text('المغرب',
                                        style: TextStyle(
                                            color: Color.fromRGBO(4, 46, 32, 1),
                                            fontSize: 38,
                                            fontFamily: 'arab'))
                                  ]),
                              //
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(pray()[5],
                                        style: const TextStyle(
                                          color: Color.fromRGBO(4, 46, 32, 1),
                                          fontSize: 38,
                                        )),
                                    const Text('العشاء',
                                        style: TextStyle(
                                            color: Color.fromRGBO(4, 46, 32, 1),
                                            fontSize: 38,
                                            fontFamily: 'arab'))
                                  ]),
                            ])))
              ],
            ),
          )
        ],
      ),
    );
  }
}
