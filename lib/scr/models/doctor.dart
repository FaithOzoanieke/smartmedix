import 'package:meta/meta.dart';

class Doctor {
  final int id;
  final String name;
  final String spec;
  final double rating;

  Doctor({
    @required this.id,
    @required this.name,
    @required this.spec,
    @required this.rating,
  });

factory Doctor.fromJson(Map<String, dynamic> json){
  return Doctor(
    id: json['id'],
    name: json['name'],
    spec: json['spec'],
    rating: json['rating'],
  );
}

  Map<String, dynamic> toJson(){

    return{
      'id': id,
      'name': name,
      'spec': spec,
      'rating': rating,
    };

  }
}

