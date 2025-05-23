// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

bool validateFullName(String name) {
  List<String> parts = name.trim().split(' ');
  if (parts.length < 3) {
    return false;
  }
  return true;
}
