class MessageModel {
  MessageModel(
      {required this.message, required this.timestamp, required this.sender});

  final String message;
  final DateTime timestamp;
  final String sender;

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      message: json['message'],
      timestamp: DateTime.parse(json['timestamp']),
      sender: json['sender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'timestamp': timestamp.toIso8601String(),
      'sender': sender,
    };
  }
}
