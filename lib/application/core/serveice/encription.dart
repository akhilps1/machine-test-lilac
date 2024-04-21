import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart';
import 'package:machine_test/application/core/serveice/debug_logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:encrypt/encrypt.dart' as enc;
import 'package:permission_handler/permission_handler.dart';

class VideoEncrypter {
  static final myKey = enc.Key.fromUtf8('Abcdefghijklmnopqrstuvwxyz123456');
  static final myIV = enc.IV.fromUtf8('Abcdefghijklmnop');
  static final encrypter = enc.Encrypter(enc.AES(myKey));
}

class VideoEncriptionServeice {
  VideoEncriptionServeice();

  DebugLogger logger = DebugLogger();

  Future<Directory?> getPath() async {
    try {
      return await getExternalStorageDirectory();
    } catch (e) {
      logger.log('Error getting external storage directory ${e.toString()}');
      throw Exception('Error getting external storage directory');
    }
  }

  Future<bool> requestPermission() async {
    try {
      final status = await Permission.storage.request();
      if (status.isGranted) {
        return true;
      } else {
        final result = await Future.wait([
          Permission.videos.request(),
          Permission.audio.request(),
          Permission.photos.request()
        ]);

        if (result[0].isGranted && result[1].isGranted && result[2].isGranted) {
          return true;
        } else {
          return false;
        }
      }
    } catch (e) {
      logger.log('Error requesting permission ${e.toString()}');
      throw Exception('Error requesting permission');
    }
  }

  Encrypted encriptData({
    required Uint8List data,
    required String videoId,
  }) {
    logger.log('Encrypting...');
    final encData =
        VideoEncrypter.encrypter.encryptBytes(data, iv: VideoEncrypter.myIV);
    return encData;
  }

  Future<String> writeData({
    required Encrypted data,
    required Directory dir,
    required String fileName,
  }) async {
    try {
      logger.log('Writing...');
      final file = File('${dir.path}/$fileName');
      await file.writeAsBytes(data.bytes);
      return file.absolute.path;
    } catch (e) {
      logger.log('Error writing data ${e.toString()}');
      throw Exception('Error writing data');
    }
  }

  Future<List<int>> decryptData({
    required String path,
  }) async {
    try {
      logger.log('Decrypting...');
      logger.log('Path: $path');

      final receivePort = ReceivePort();

      await Isolate.spawn(
          readDataIsolate, {'path': path, 'sendPort': receivePort.sendPort});

      final completer = Completer<Uint8List>();
      receivePort.listen((data) {
        if (data is Uint8List) {
          completer.complete(data);
        } else if (data is String) {
          logger.log('Error reading data: $data');
          completer.completeError(Exception('Error reading data'));
        }
      });
      // final encData = await readData( path);

      final encData = await completer.future;

      return encData;
    } catch (e) {
      logger.log('Error decrypting data ${e.toString()}');
      throw Exception('Error decrypting data');
    }
  }
}

Future<Uint8List> readData(String path) async {
  try {
    final file = File(path);

    return file.readAsBytesSync().buffer.asUint8List();
  } catch (e) {
    throw Exception('Error reading data');
  }
}

void readDataIsolate(Map<String, dynamic> message) {
  final path = message['path'];
  final sendPort = message['sendPort'];

  try {
    final file = File(path);
    final bytes = file.readAsBytesSync();
    final uint8List = bytes.buffer.asUint8List();
    final encrypted = Encrypted(uint8List);
    final data = VideoEncrypter.encrypter
        .decryptBytes(encrypted, iv: VideoEncrypter.myIV);

    sendPort.send(Uint8List.fromList(data));
  } catch (e) {
    final error = 'Error reading data: $e';
    sendPort.send(error);
  }
}
