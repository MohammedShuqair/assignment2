import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      title: RichText(
        textDirection: TextDirection.rtl,
          text: const TextSpan(
              text: 'Al-Azhar ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              children: [
                TextSpan(
                  text: 'University  ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  ),
                ),
                TextSpan(
                  text: 'in Gaza',
                  style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 12,
                    color: Colors.amber
                  ),
                ),

              ]
          )),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
