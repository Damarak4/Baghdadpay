// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'dart:math' as math;
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';

Future<bool> sendUltrasoundSignal(String tid) async {
  try {
    String binary = _textToBinary(tid);

    for (int i = 0; i < binary.length; i++) {
      int freq = binary[i] == '0' ? 10100 : 11200;
      Uint8List wave = generateSineWave(freq, 0.15);
      await playAudioSignal(wave);
      await Future.delayed(Duration(milliseconds: 50)); // short gap
    }

    return true;
  } catch (e) {
    print('Error sending ultrasonic signal: $e');
    return false;
  }
}

/// Converts a text string to its binary representation (ASCII-based)
String _textToBinary(String text) {
  return text.codeUnits.map((c) => c.toRadixString(2).padLeft(8, '0')).join();
}

/// Generates a sine wave at [frequency] Hz for [durationSeconds] seconds
Uint8List generateSineWave(int frequency, double durationSeconds) {
  int sampleRate = 44100;
  int totalSamples = (sampleRate * durationSeconds).toInt();
  Int16List buffer = Int16List(totalSamples);

  for (int i = 0; i < totalSamples; i++) {
    double time = i / sampleRate;
    double value = math.sin(2 * math.pi * frequency * time);
    buffer[i] = (value * 32767).toInt();
  }

  return Uint8List.view(buffer.buffer);
}

/// Plays the given [audioData] as a temporary WAV file
Future<void> playAudioSignal(Uint8List audioData) async {
  try {
    final player = AudioPlayer();
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/ultrasound.wav');
    await tempFile.writeAsBytes(audioData);
    await player.play(DeviceFileSource(tempFile.path));
  } catch (e) {
    print("خطأ أثناء تشغيل الصوت: $e");
  }
}
