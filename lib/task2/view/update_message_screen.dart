// lib/screens/update_message_screen.dart

import 'package:flutter/material.dart';

import '../service/message_service.dart';

class UpdateMessageScreen extends StatefulWidget {
  const UpdateMessageScreen({super.key});

  @override
  _UpdateMessageScreenState createState() => _UpdateMessageScreenState();
}

class _UpdateMessageScreenState extends State<UpdateMessageScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final MessageService _messageService = MessageService();

  void _updateMessage() async {
    if (_formKey.currentState!.validate()) {
      final String id = _idController.text.trim();
      final String newMessage = _messageController.text.trim();

      try {
        await _messageService.updateMessage(id, newMessage);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Message updated successfully!')),
        );
        _idController.clear();
        _messageController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to update message.')),
        );
      }
    }
  }

  @override
  void dispose() {
    _idController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Update Message'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _idController,
                  decoration: const InputDecoration(labelText: 'Message ID'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the message ID to update';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _messageController,
                  decoration: const InputDecoration(labelText: 'New Message Content'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter new message content';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _updateMessage,
                  child: const Text('Update'),
                ),
              ],
            ),
          ),
        ));
  }
}
