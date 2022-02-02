import 'package:barta/sign%20in%20&%20up/LoginScreen.dart';
import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {


  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final TextEditingController _name = TextEditingController();
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
                  'Create Account to Login!', style: TextStyle(color: Colors.grey, fontSize: 28, fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(height: size.height/15,),

              Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'Name', Icons.account_circle, _name),
              ),

              Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'Email', Icons.email, _email),
              ),

              Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'Password', Icons.lock, _password),
              ),

              SizedBox(height: 15,),

              customButton(size),

              SizedBox(height: 50,),

              GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=> LoginScreen())),
                  child: Text('Login',
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
          child: Text('Create Account', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)
      ),
    );
  }

  Widget field (Size size, String hintText, IconData icon, TextEditingController cont){
    return Container(
      padding: const EdgeInsets.all(8.0),
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
