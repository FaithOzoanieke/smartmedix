import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Session {
  final int id;
  final int studentId;
  final int doctorId;
  final TimeOfDay time;
  final DateTime date;
  final bool approved;
  final bool finish;
  final String description;
  final String type;

  Session(
      {
      @required this.id,
      @required this.studentId,
      @required this.doctorId,
      @required this.time,
      @required this.date,
      @required this.approved,
      @required this.finish,
      @required this.description,
      @required this.type
      });

      factory Session.fromJson(Map<String, dynamic> json){
        return Session(
          id: json['id'],
          studentId: json['studentId'],
          doctorId: json['doctorId'],
          time: json['time'],
          date: json['date'],
          approved: json['approved'],
          finish: json['finish'],
          description: json['description'],
          type: json['type'],
        );
      }
}

