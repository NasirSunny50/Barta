import 'package:flutter/material.dart';

import 'CreateAccount.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height/20,),

            Container(
                padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
                child: IconButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> LoginScreen()))
                    , icon: Icon(Icons.arrow_back_ios))
            ),

            SizedBox(height: size.height/50,),

            Container(
                padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text('Welcome to বার্তা', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),)
            ),

            SizedBox(height: size.height/10000,),

            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                'Sign in to continue!', style: TextStyle(color: Colors.grey, fontSize: 28, fontWeight: FontWeight.w800),
              ),
            ),

            SizedBox(height: size.height/15,),

            Container(
              width: size.width,
                alignment: Alignment.center,
                child: field(size, 'Email', Icons.email, _email)
            ),

            Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(size, 'Password', Icons.lock, _password)
            ),

            SizedBox(height: 15,),

            customButton(size),

            SizedBox(height: 80,),

            Text('New here?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),

            SizedBox(height: 10,),
            
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CreateAccount())),
                child: Text('Create an Account',
                  style: TextStyle(color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      )
    );
  }

  Widget customButton(Size size){
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height/14,
        width: size.width/2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal,
        ),
        child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)
      ),
    );
  }

  Widget field (Size size, String hintText, IconData icon, TextEditingController cont){
    return Container(
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.center,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
      ),
    );
  }
}
