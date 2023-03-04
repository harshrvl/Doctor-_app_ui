import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiCall extends StatelessWidget {
  const ApiCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(

              itemBuilder: (context, index) {
                return Container(
                  height: 280,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 10),
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.blue,
                                )),
                          ),
                        ],
                      ),
                      Container(
                        child: Image.network(
                            width: 140, snapshot.data![index]['image'].toString()),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        snapshot.data![index]['doctorname'].toString(),
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 25),
                                      ),
                                      margin: EdgeInsets.only(right: 70),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: getTravelData(),
      ),
    );
  }
  Future<List<dynamic>> getTravelData() async {
    http.Response res = await http
        .get(Uri.parse('https://63105977826b98071a3ec22b.mockapi.io/hospital'));
    List<dynamic> jsonData = jsonDecode(res.body.toString());
    return jsonData;
  }
}
