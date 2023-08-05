import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String> appendNewItem(
  String singleItem,
  List<String> arrayItem,
) {
  // add singleItem to arrayItem
  arrayItem.add(singleItem);
  return arrayItem;
}

List<String> appendPlantID(
  List<String> useableplantsid,
  String plnatid,
) {
  // append plantid into column named useableplantsid from soild table
  useableplantsid.add(plnatid);
  return useableplantsid;
}
