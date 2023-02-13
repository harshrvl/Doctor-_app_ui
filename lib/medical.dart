import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width,
                  height: height * 0.32,
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
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/project image.png'),
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
                        padding: const EdgeInsets.only(left: 25, top: 17),
                        child: Container(
                          child: Text(
                            'Hi,',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 17),
                        child: Container(
                          child: Text(
                            'Your Health Is Our First Priority',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
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
            Container(
              margin: EdgeInsets.only(right: 150,top: 10),
              child: Text("Recommended Doctors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
            Container(child:
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 350,
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
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            child: Image.asset(width: 140, 'assets/images/doctor3.jpg'),
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
                                            'Surgeon',
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
                    Container(
                      height: 350,
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
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            child: Image.asset(width: 140, 'assets/images/doctor3.jpg'),
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
                    Container(
                      height: 350,
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
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            child: Image.asset(width: 140, 'assets/images/doctor3.jpg'),
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
                                            'Surgeon',
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
