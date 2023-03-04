import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'getbyeid.dart';


class AddApi extends StatefulWidget {
  const AddApi({Key? key}) : super(key: key);

  @override
  State<AddApi> createState() => _AddApiState();
}

class _AddApiState extends State<AddApi> {
  final _formkey=GlobalKey<FormState>();
  final _imagecontroller=TextEditingController();
  final _name=TextEditingController();
  bool _isLoading=false;
  Future<void>_addData()async{
    setState(() {
      _isLoading=true;
    });

    final apiUrl='https://63105977826b98071a3ec22b.mockapi.io/hospital';
    final response=await http.post(Uri.parse(apiUrl),body:{
      'image':_imagecontroller.text,
      'doctorname':_name.text,
    });
    if(response.statusCode==201)
    {
      Navigator.pop(context,true);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to add data')),);
    }
    setState(() {
      _isLoading=false;
    });
  }
  Future<void> putAccountData() async {
    String url = 'some url';
    final Map payload = {
      "doctorname": _name.text,
    };
    try {
      final response = await http.put(Uri.parse(url),
          body: jsonEncode(payload));
      print(response.body);
    } catch (er) {}
  }
  @override
  void dispose(){
    _imagecontroller.dispose();
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: TextFormField(
                  controller: _imagecontroller,
                  decoration: InputDecoration(labelText: 'Image url'),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Image url is required';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16,),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'NAme is required';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16,),

              SizedBox(height: 32,),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: ElevatedButton(

                    onPressed: _isLoading ? null :(){
                      if(_formkey.currentState!.validate()){
                        _addData();
                      }
                    }, child: _isLoading ? CircularProgressIndicator():Text('Add data')),
              ),

            ],
          ),
        ),
      ),),
    );

  }
}
