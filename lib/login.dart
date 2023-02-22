
import 'package:appui/medical.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Image(
                  image: AssetImage('assets/images/login.jpg'),
                ),
              ),

              Expanded(
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Expanded(
                child: TextFormField(
                  obscureText: false,
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.black54.withOpacity(.3),
                    ),
                    hintText: "Enter Username",
                  ),
                  cursorColor: Colors.black54.withOpacity(.5),
                ),
              ),

              Expanded(
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black54.withOpacity(.3),
                    ),
                    hintText: "Enter Password",
                  ),
                  cursorColor: Colors.black54.withOpacity(.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return MyApp();
                      })
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff296e48))),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 30,
                        child: Image.asset('assets/images/google-logo-9808.png'),
                      ),
                      Text(
                        'Log In with Google',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
