import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  Color _containerColor = Colors.grey.shade600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(
                      image: AssetImage('assets/images/doctor3.jpg'),
                      fit: BoxFit.fill),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    'Dr. Harsh',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.heart_broken_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        'Surgeon',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                      'Dr harsh is heart specialist, He was working at Toronto General Hospital Canada.'
                      'After lot of Surgeory and Experience now he is Working in his own company and hospital at URlife hospital in Ahemdabad.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text('Book Date',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if(_containerColor==Colors.grey.shade600){
                              _containerColor=Colors.blue;
                            }
                            else{
                              _containerColor=Colors.grey.shade600;
                            }
                          });
                        },
                        child: Container(
                          width: 80,
                          height: 70,
                          decoration: BoxDecoration(
                              color: _containerColor,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Column(
                              children: [
                                Text('9',style: TextStyle(color: Colors.white,fontSize: 25),),
                                Text('DEC',style: TextStyle(color: Colors.white,fontSize: 25),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text('10',style: TextStyle(color: Colors.white,fontSize: 25),),
                              Text('DEC',style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text('11',style: TextStyle(color: Colors.white,fontSize: 25),),
                              Text('DEC',style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text('12',style: TextStyle(color: Colors.white,fontSize: 25),),
                              Text('DEC',style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 8),
                          child: Column(
                            children: [
                              Text('13',style: TextStyle(color: Colors.white,fontSize: 25),),
                              Text('DEC',style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text('Book Time',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11,top: 4),
                          child: Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Text('8:00 AM',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11,top: 4),
                          child: Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('9:00 AM',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11,top: 4),
                          child: Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('10:00 AM',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11,top: 4),
                          child: Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('11:00 AM',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11,top: 4),
                          child: Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('12:00 AM',style: TextStyle(color: Colors.white,fontSize: 20),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),),
              ),
              Center(

                child: Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width: 400,
                  height: 50,

                  child: Center(
                      child: Text(
                        'Book Apopointment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
