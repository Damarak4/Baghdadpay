// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<bool> validateUniversityEmail(String email) async {
  if (email.trim().endsWith('@uobaghdad.edu.iq')) {
    return true; // ايميل جامعي
  }
  return false; // مو ايميل جامعي
}
