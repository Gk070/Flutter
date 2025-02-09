import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, // To remove the debug banner on the output
        home: LoginForm(), // Home is used to make the loginForm as the first popping UI
      )
  );
}

class LoginForm extends StatefulWidget{ // Stateful widget because it is dynamic
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isImageChanged = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  void _showCupertinoAlert(String message){
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context){
          return CupertinoAlertDialog(
            title: Text(
                "Invalid Credentials!"
            ),
            content: Text(
                message
            ),
            actions: [
              CupertinoDialogAction(
                  child: Text(
                      "OK"
                  ),
                onPressed: (){
                    Navigator.pop(context);
                },
              ),
            ],
          );
        },
    );
  }

  void _checkEmpty(){
    if(password == confirmPassword){
      setState(() {
        _isImageChanged = !_isImageChanged;
      });
    }
    if(name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty){
      _showCupertinoAlert("All the fields are mandatory");
    }
    else if(password != confirmPassword){
      _showCupertinoAlert("Password not matching");
    }
      debugPrint("Submission Successful");
  }

  Widget build(BuildContext context){ //build is used to describe the UI
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Submission Form",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.deepOrange[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //language= Align to center
          children: <Widget>[
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Name"
                ),
                onChanged: (value){
                  setState(() {
                    name = value;
                  });
                }
            ),
            SizedBox(
                height: 20.0
            ),
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Email"
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                }
            ),
            SizedBox(
                height: 20.0
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscurePassword ? Icons.lock : Icons.lock_open
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
                obscureText: _obscurePassword,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                }
            ),
            SizedBox(
                height: 20.0
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Confirm Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureConfirmPassword ? Icons.lock : Icons.lock_open
                    ),
                    onPressed: _toggleConfirmPasswordVisibility,
                  ),
                ),
                obscureText: _obscureConfirmPassword, // For hiding password
                onChanged: (value) {
                  setState(() {
                    confirmPassword = value;
                  });
                }
            ),
            SizedBox(
                height: 20.0
            ),
            ElevatedButton(
              onPressed: () {
                _checkEmpty();
              },
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0
                ),
              ),
            ),
            SizedBox(
                height: 20.0
            ),
            InkWell(
              onTap: _isImageChanged ? null : () {},
              child: Image.asset(
                _isImageChanged ? 'images/apple.jpeg' : "images/login.png",
                height: 150.0,
                width: 150.0,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepOrange[200],
    );
  }
}