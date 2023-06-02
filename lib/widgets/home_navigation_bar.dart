import 'package:flutter/material.dart';

class HomeNavigationBar extends StatefulWidget {
  final Function(int index) onTap;

  const HomeNavigationBar({Key? key, required this.onTap}) : super(key: key);

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                color: currentIndex == 0 ? Colors.white : Colors.grey[700],
                onPressed: () {
                  widget.onTap(0);
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: currentIndex == 0 ? Colors.white : Colors.grey[700],
                  fontWeight: currentIndex==0?FontWeight.bold:FontWeight.normal
                ),
              ),
              const SizedBox(
                height: 2,
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.settings),
                color: currentIndex == 1 ? Colors.white : Colors.grey[700],
                onPressed: () {
                  widget.onTap(1);
                  setState(() {
                    currentIndex = 1;
                  });
                },
              ),
              Text(
                "Settings",
                style: TextStyle(
                    color: currentIndex == 1 ? Colors.white : Colors.grey[700],
                    fontWeight: currentIndex==1?FontWeight.bold:FontWeight.normal
                ),
              ),
              const SizedBox(
                height: 2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
