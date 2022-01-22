class MessageModel {
  MessageModel({required this.message, required this.timestamp});

  final String message;
  final DateTime timestamp;

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      message: json['message'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
