import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class UserDetails {
  final dynamic id;
  final dynamic image;
  final dynamic name;

  UserDetails(
      {
        required this.id,
        required this.image,
        required this.name,
      });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
        id:json['id'],
        image: json['image'],
        name: json['name'],
    );
  }
  Map<String,dynamic> toJson() =>{
    'id':id,
    'image':image,
    'name': name,


  };
}
class MainFile4 extends StatefulWidget {
  final UserDetails userDetails;
  MainFile4({required this.userDetails});


  @override
  State<MainFile4> createState() => _MainFile4State();
}

class _MainFile4State extends State<MainFile4> {
  final _formkey=GlobalKey<FormState>();

  final _imagecontroller = TextEditingController();
  final _name = TextEditingController();

  @override
  void initState() {
    super.initState();
    _imagecontroller.text = widget.userDetails.image;
    _name.text = widget.userDetails.name;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: TextFormField(
                  controller: _imagecontroller,
                  decoration: InputDecoration(labelText: 'image'),
                ),
              ),
              Card(
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(labelText: 'name'),
                ),
              ),
              Card(
                child: ElevatedButton(
                  onPressed: () async {
                    final userDetails = UserDetails(
                      id: widget.userDetails.id,
                      image: _imagecontroller.text,
                      name: _name.text,
                    );
                    final response = await http.put(
                      Uri.parse('https://63105977826b98071a3ec22b.mockapi.io/hospital/${widget.userDetails.id}'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(userDetails),
                    );
                    if (response.statusCode == 200) {
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to update user details.'),
                        ),);
                    }
                  },
                  child: Text('Update'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
