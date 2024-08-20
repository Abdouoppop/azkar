import 'package:flutter/material.dart';

class CustomContainer1 extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const CustomContainer1({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 390,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: const Color.fromARGB(255, 178, 169, 0),
          width: 3.0,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color.fromRGBO(4, 46, 32, 1),
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'arab',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Image.asset(
              imagePath,
              scale: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final double height;

  const CustomAppbar({super.key, required this.text, this.height = 85});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 85,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      toolbarOpacity: 1,
      backgroundColor: const Color(0xff264323),
      centerTitle: true,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: 'arab',
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
