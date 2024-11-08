// lib/services/message_service.dart

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/message_model.dart';

class MessageService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // CREATE: Add a new message
  Future<void> createMessage(Message message) async {
    try {
      await _firestore.collection('messages').doc(message.id).set(message.toJson());
      print("Message created with ID: ${message.id}");
    } catch (e) {
      print("Error creating message: $e");
      rethrow;
    }
  }

  // READ: Get all messages as a stream
  Stream<List<Message>> getMessages() {
    return _firestore.collection('messages').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Message.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }

  // UPDATE: Update an existing message
  Future<void> updateMessage(String id, String newMessage) async {
    try {
      await _firestore.collection('messages').doc(id).update({
        'message': newMessage,
      });
      print("Message updated with ID: $id");
    } catch (e) {
      print("Error updating message: $e");
      rethrow;
    }
  }

  // DELETE: Delete a message
  Future<void> deleteMessage(String id) async {
    try {
      await _firestore.collection('messages').doc(id).delete();
      print("Message deleted with ID: $id");
    } catch (e) {
      print("Error deleting message: $e");
      rethrow;
    }
  }
}
