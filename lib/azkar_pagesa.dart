import 'package:azkar/widgets.dart';
import 'package:flutter/material.dart';
import 'package:azkar/api.dart';

List content1 = [];

///-1
class AzkarElsabah extends StatefulWidget {
  const AzkarElsabah({super.key});

  @override
  State<AzkarElsabah> createState() => _AzkarElsabahState();
}

class _AzkarElsabahState extends State<AzkarElsabah> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أذكار الصباح');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أذكار الصباح'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

///-2
class Azkaralestekaz extends StatefulWidget {
  const Azkaralestekaz({super.key});

  @override
  State<Azkaralestekaz> createState() => _AzkaralestekazState();
}

class _AzkaralestekazState extends State<Azkaralestekaz> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أذكار الاستيقاظ');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أذكار الاستيقاظ'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

///-3
class Azkaralnuom extends StatefulWidget {
  const Azkaralnuom({super.key});

  @override
  State<Azkaralnuom> createState() => _AzkaralnuomState();
}

class _AzkaralnuomState extends State<Azkaralnuom> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أذكار النوم');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أذكار النوم'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

///-4
class Azkaralmasaa extends StatefulWidget {
  const Azkaralmasaa({super.key});

  @override
  State<Azkaralmasaa> createState() => _AzkaralmasaaState();
}

class _AzkaralmasaaState extends State<Azkaralmasaa> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أذكار المساء');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أذكار المساء'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

///-5
class AdeaQurania extends StatefulWidget {
  const AdeaQurania({super.key});

  @override
  State<AdeaQurania> createState() => _AdeaQuraniaState();
}

class _AdeaQuraniaState extends State<AdeaQurania> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أدعية قرآنية');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أدعية قرآنية'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}

///-6
class Azkaralsalah extends StatefulWidget {
  const Azkaralsalah({super.key});

  @override
  State<Azkaralsalah> createState() => _AzkaralsalahState();
}

class _AzkaralsalahState extends State<Azkaralsalah> {
  List content1 = [];
  List count1 = [];
  @override
  void initState() {
    super.initState();
    azkar();
  }

  azkar() async {
    Function1 function1 = Function1('أذكار بعد السلام من الصلاة المفروضة');
    var main = await function1.api();
    for (var zekr in main) {
      content1.add(zekr.content);
    }
    for (var num in main) {
      count1.add(num.count);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color changedcolor = Colors.white;
    return Scaffold(
      appBar: const CustomAppbar(text: 'أذكار الصلاة'),
      body: Stack(children: [
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
        Center(
            child: SingleChildScrollView(
                child: Column(children: [
          ...List.generate(content1.length, (index) {
            return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.yellow, width: 3),
                  color: changedcolor,
                ),
                // //

                child: ListTile(
                  title: Text(
                    content1[index],
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${count1[index]} : عدد المرات ',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // onTap: () {
                  //   changedcolor == Colors.white
                  //       ? changedcolor = Color.fromARGB(255, 112, 234, 116)
                  //       : changedcolor = Colors.white;
                  //   print(changedcolor);
                  //   setState(() {});
                  // },
                ));
          })
        ]))),
        //
        ///
        ///
        ///
        ///
      ]),
      backgroundColor: const Color.fromRGBO(4, 46, 32, 1),
    );
  }
}
