

import 'package:flutter/material.dart';

import '../service/message_service.dart';


class DeleteMessageScreen extends StatefulWidget {
  const DeleteMessageScreen({super.key});

  @override
  _DeleteMessageScreenState createState() => _DeleteMessageScreenState();
}

class _DeleteMessageScreenState extends State<DeleteMessageScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final MessageService _messageService = MessageService();

  void _deleteMessage() async {
    if (_formKey.currentState!.validate()) {
      final String id = _idController.text.trim();

      try {
        await _messageService.deleteMessage(id);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Message deleted successfully!')),
        );
        _idController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete message.')),
        );
      }
    }
  }

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Delete Message'),
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
                      return 'Please enter the message ID to delete';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _deleteMessage,
                  child: const Text('Delete'),
                ),
              ],
            ),
          ),
        ));
  }
}
