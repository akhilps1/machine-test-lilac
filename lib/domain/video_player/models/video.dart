import 'dart:convert';
import 'dart:typed_data';

class Video {
  Video({
    required this.path,
    required this.encryptionKey,
    required this.secretKey,
  });

  final String path;
  final Uint8List encryptionKey;
  final String secretKey;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'encryptionKey':
          base64.encode(encryptionKey), 
      'secretKey': secretKey,
    };
  }

  factory Video.fromMap(Map<String, dynamic> map) {
    return Video(
      path: map['path'] as String,
      encryptionKey:
          base64.decode(map['encryptionKey']), 
      secretKey: map['secretKey'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Video.fromJson(String source) =>
      Video.fromMap(json.decode(source) as Map<String, dynamic>);
}
