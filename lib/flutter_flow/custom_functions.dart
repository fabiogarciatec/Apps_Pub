import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? dataBrasil(String? dataBr) {
  // converta data para formata brasil
  if (dataBr == null) {
    return null;
  }
  var data = DateTime.parse(dataBr);
  var formatter = new DateFormat('dd/MM/yyyy');
  String formatted = formatter.format(data);
  return formatted;
}

int? pontosEmValor(
  int? valor,
  int? pontos,
) {
  // gere uma função de multiplicação do valor pontos pelo valor
  if (valor == null || pontos == null) {
    return null;
  }
  return valor * pontos;
}
