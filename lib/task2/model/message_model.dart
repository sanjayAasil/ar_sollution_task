// lib/models/message.dart

class Message {
  String id;
  String message;

  Message({required this.id, required this.message});

  // Convert a Message object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
    };
  }

  // Create a Message object from JSON
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'] as String,
      message: json['message'] as String,
    );
  }
}
