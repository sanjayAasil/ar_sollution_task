// lib/screens/read_messages_screen.dart

import 'package:flutter/material.dart';

import '../model/message_model.dart';
import '../service/message_service.dart';


class ReadMessagesScreen extends StatelessWidget {
  final MessageService _messageService = MessageService();

  ReadMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Messages'),
      ),
      body: StreamBuilder<List<Message>>(
        stream: _messageService.getMessages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No messages found.'),
            );
          }

          final messages = snapshot.data!;

          return ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final Message message = messages[index];
              return ListTile(
                title: Text('ID: ${message.id}'),
                subtitle: Text('Message: ${message.message}'),
              );
            },
          );
        },
      ),
    );
  }
}
