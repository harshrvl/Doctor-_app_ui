import 'package:appui/medical.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/doctors.png'),
                width: 1000,
                height: 350,
              ),
              margin: EdgeInsets.only(top: 45),
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Text(
                  "Doctor is Online to provide you Service",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                margin: EdgeInsets.only(top: 20),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.blue,
              child: Text(
                "Appoint your Doctor",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              margin: EdgeInsets.only(bottom: 10),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 45),
              child: Center(
                  child: Container(
                    width: 200,
                   height: 50,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return MyApp();
                            })
                        );
                      },
                  child: Center(
                    child: Text(
                      "Let's Go",
                      style: TextStyle(color: Colors.blue,fontSize: 25),
                    ),
                  ),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/lined heart.png'),
                  color: Colors.white,
                  width: 275,
                  height: 200,
                ),
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

