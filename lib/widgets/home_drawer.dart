import 'package:flutter/material.dart';

import '../model/user.dart';

class HomeDrawer extends StatelessWidget {
  final User user;

  const HomeDrawer({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 25,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.teal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Text(
                      user.name[0],
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    user.name,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user.id,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: Text(user.mail),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text('Contact Us'),
            ),
            const ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Offers'),
            ),
          ],
        ),
      ),
    );
  }
}
