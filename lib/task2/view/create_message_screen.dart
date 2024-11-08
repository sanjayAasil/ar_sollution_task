import 'package:flutter/material.dart';

import '../model/message_model.dart';
import '../service/message_service.dart';

class CreateMessageScreen extends StatefulWidget {
  const CreateMessageScreen({super.key});

  @override
  _CreateMessageScreenState createState() => _CreateMessageScreenState();
}

class _CreateMessageScreenState extends State<CreateMessageScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final MessageService _messageService = MessageService();

  void _createMessage() async {
    if (_formKey.currentState!.validate()) {
      final String id = _idController.text.trim();
      final String messageContent = _messageController.text.trim();
      final Message message = Message(id: id, message: messageContent);

      try {
        await _messageService.createMessage(message);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Message created successfully!')),
        );

        _idController.clear();
        _messageController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to create message.')),
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
          title: const Text('Create Message'),
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
                      return 'Please enter a message ID';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _messageController,
                  decoration: const InputDecoration(labelText: 'Message Content'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter message content';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _createMessage,
                  child: const Text('Create'),
                ),
              ],
            ),
          ),
        ));
  }
}
