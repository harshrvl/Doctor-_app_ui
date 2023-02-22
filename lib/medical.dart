import 'package:appui/profile.dart';
import 'package:flutter/material.dart';
import 'doctorprofile.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyApp extends StatelessWidget {

  List CatNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];
  List<Icons> CatIcons = [

  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: width,
                  height: height * 0.35,
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
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  },));
                                },
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/profile.jpg'),
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
                        child: Container(
                          child: Text(
                            'Hi,',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Container(
                          child: Text(
                            'Programmer',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Category',
                  style: TextStyle(color: Colors.black,fontSize: 25),
                ),
              ),
            ),
            Center(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius:25 ,
                        backgroundColor: Colors.white,
                        child: Icon(MdiIcons.toothOutline,size: 35,),
                      ),
                    ),  Text('Teeth')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius:25 ,
                        backgroundColor: Colors.white,
                        child: Icon(MdiIcons.heartPlus,size: 35,),
                      ),
                    ),  Text('Heart')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius:25 ,
                        backgroundColor: Colors.white,
                        child: Icon(MdiIcons.eye,size: 35,),
                      ),
                    ),  Text('Eye')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius:25 ,
                        backgroundColor: Colors.white,
                        child: Icon(MdiIcons.brain,size: 35,),
                      ),
                    ),  Text('Brain')],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius:25 ,
                        backgroundColor: Colors.white,
                        child: Icon(MdiIcons.earHearing,size: 35,),
                      ),
                    ),  Text('Ear')],
                  ),
                ),
              ],),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 150, top: 10),
              child: Text(
                "Recommended Doctors",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return DoctorProfile();
                          },));
                        },
                        child: Container(
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
                                child: Image.asset(
                                    width: 140, 'assets/images/doctor3.jpg'),
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
                                                'Dr. Harsh',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 25),
                                              ),
                                              margin: EdgeInsets.only(right: 70),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 100),
                                              child: Text(
                                                'Dentist',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return DoctorProfile();
                          },));
                        },
                        child: Container(
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
                                child: Image.asset(
                                    width: 140, 'assets/images/doctor3.jpg'),
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
                                                'Dr. Harsh',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 25),
                                              ),
                                              margin: EdgeInsets.only(right: 70),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 100),
                                              child: Text(
                                                'Dentist',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return DoctorProfile();
                          },));
                        },
                        child: Container(
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
                                child: Image.asset(
                                    width: 140, 'assets/images/doctor3.jpg'),
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
                                                'Dr. Harsh',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 25),
                                              ),
                                              margin: EdgeInsets.only(right: 70),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 100),
                                              child: Text(
                                                'Dentist',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
