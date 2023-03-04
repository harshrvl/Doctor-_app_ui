import 'dart:convert';
import 'package:appui/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'addapi.dart';
import 'doctorprofile.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'getbyeid.dart';

class MyApp extends StatelessWidget {
  List CatNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];
  List<Icons> CatIcons = [];

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Container(
                            width: 100,
                            height: 55,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return Profile();
                                  },
                                ));
                              },
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17, left: 10),
                          child: Container(
                            width: 75,
                            height: 55,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.notifications,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 22),
                      child: Text(
                        'Hi,',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        'Programmer',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10),
                      child: Container(
                        child: Text(
                          'Your Health is our First Prioroty',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.toothOutline,
                                size: 35,
                              ),
                            ),
                          ),
                          Text('Teeth'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.heartPlus,
                                size: 35,
                              ),
                            ),
                          ),
                          Text('Heart')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.eye,
                                size: 35,
                              ),
                            ),
                          ),
                          Text('Eye')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.brain,
                                size: 35,
                              ),
                            ),
                          ),
                          Text('Brain')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                MdiIcons.earHearing,
                                size: 35,
                              ),
                            ),
                          ),
                          Text('Ear')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 150, top: 10, left: 10),
                    child: Text(
                      "Recommended Doctors",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              FutureBuilder<List<dynamic>>(
                future: getDataFromApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return GetById(id: snapshot.data![index]['id']);
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 380,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        height: 100,
                                        padding:
                                            EdgeInsets.only(left: 10, top: 100),
                                        margin: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  width: 70,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      shape: BoxShape.circle),
                                                ),
                                                Positioned(
                                                    bottom: 10,
                                                    left: 0,
                                                    right: 0,
                                                    child: SizedBox(
                                                      height: 80,
                                                      child: Image.network(
                                                          snapshot.data![index]
                                                                  ["image"]
                                                              .toString()),
                                                    )),
                                                Positioned(
                                                    bottom: 40,
                                                    left: 85,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Dr." +
                                                              snapshot
                                                                  .data![index][
                                                                      'doctorname']
                                                                  .toString(),
                                                          style: TextStyle(
                                                              fontSize: 25),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: snapshot.data!.length);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return AddApi();
            }));
          },
        )
    );

  }

  Future<List<dynamic>> getDataFromApi() async {
    http.Response res = await http
        .get(Uri.parse("https://63105977826b98071a3ec22b.mockapi.io/hospital"));
    List<dynamic> jsonData = jsonDecode(res.body.toString());
    return jsonData;
  }
}
