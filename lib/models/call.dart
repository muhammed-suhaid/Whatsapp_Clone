class Call {
  final String callerId;
  final String callerName;
  final String callerPic;
  final String receiverId;
  final String receiverName;
  final String receiverPic;
  final String callId;
  final bool hasDialed;

  Call({
    required this.callerId,
    required this.callerName,
    required this.callerPic,
    required this.receiverId,
    required this.receiverName,
    required this.receiverPic,
    required this.callId,
    required this.hasDialed,
  });

  factory Call.fromMap(Map<String, dynamic> json) {
    return Call(
      callerId: json['callerId'],
      callerName: json['callerName'],
      callerPic: json['callerPic'],
      receiverId: json['receiverId'],
      receiverName: json['receiverName'],
      receiverPic: json['receiverPic'],
      callId: json['callId'],
      hasDialed: json['hasDialed'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'callerId': callerId,
      'callerName': callerName,
      'callerPic': callerPic,
      'receiverId': receiverId,
      'receiverName': receiverName,
      'receiverPic': receiverPic,
      'callId': callId,
      'hasDialed': hasDialed,
    };
  }
}
