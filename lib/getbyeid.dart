import 'package:appui/update.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class GetById extends StatefulWidget {
  final dynamic id;

  GetById({required this.id});

  @override
  _GetByIdState createState() => _GetByIdState();
}

class _GetByIdState extends State<GetById> {
  late Future<Map<String, dynamic>> _detailsFuture;

  @override
  void initState() {
    super.initState();
    _detailsFuture = fetchDetailsById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black54, //change your color here
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: FutureBuilder<Map<String, dynamic>>(
          future: _detailsFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final details = snapshot.data!;
              return Center(
                child: Column(
                  children: [
                    Image.network(
                      '${details['image']}',
                      width: 200,
                    ),
                    Text(
                      "Name:" + '${details['doctorname']}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        child: IconButton(
                            onPressed: () async {
                              try {
                                await deleteUser('${snapshot.data!['id']}')
                                    .then((value) => setState(() {}));
                                Navigator.pop(context);
                              } catch (e) {
                                print(e);
                              }
                            },
                            icon: Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                              size: 30,
                            ))),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return MainFile4(userDetails: UserDetails(
                                  id: details['id'].toString(),
                                  image:details['image'],
                                  name:details['doctorname'],
                                  ),);
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.update,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> fetchDetailsById(dynamic id) async {
    final response = await http.get(
        Uri.parse('https://63105977826b98071a3ec22b.mockapi.io/hospital/$id'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to fetch details");
    }
  }

  Future<void> deleteUser(dynamic id) async {
    final response = await http.delete(
      Uri.parse('https://63105977826b98071a3ec22b.mockapi.io/hospital/$id'),
      headers: {'Authorization': 'Bearer <your access tokens>'},
    );

    if (response.statusCode == 200) {
      print('record deleted sucessfully');
    } else {
      throw Exception("Failed to delete data");
    }
  }
}
