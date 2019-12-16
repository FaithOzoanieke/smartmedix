import 'package:meta/meta.dart';

class Student {
  final int id;
  final String matricNo;
  final String fullName;
  final String phone;
  final int age;
  final String gender;

  Student({
    @required this.id,
    @required this.matricNo,
    @required this.fullName,
    @required this.phone,
    @required this.age,
    @required this.gender,
  });

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      id: json['id'],
      matricNo: json['matricNo'],
      fullName: json['fullName'],
      phone: json['phone'],
      age: json['age'],
      gender: json['gender']
    );
  }

  Map<String, dynamic> toJson(){

    return {
      'id': id,
      'matricNo':matricNo,
      'fullName':fullName,
      'phone':phone,
      'age':age,
      'gender':gender,
    };
  }
}
