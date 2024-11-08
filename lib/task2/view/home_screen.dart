
import 'package:ar_sollutions/task2/view/read_message_screen.dart';
import 'package:ar_sollutions/task2/view/update_message_screen.dart';
import 'package:flutter/material.dart';

import 'create_message_screen.dart';
import 'delete_message_screen.dart';

class HomeScreenT2 extends StatelessWidget {
  const HomeScreenT2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Optional: Add a drawer for navigation
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Notes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Create Message'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateMessageScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_list),
              title: const Text('Read Messages'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReadMessagesScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Update Message'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateMessageScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete Message'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeleteMessageScreen()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Firebase CRUD service'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Go back'))
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to Firebase CRUD Service\nClick the menu to get started!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
