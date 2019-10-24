import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //theme: new ThemeData(primarySwatch: Colors.red),
      home: new LoginPage(),
    );
  }
}
bool _isChecked = false;
final TextEditingController _emcontroller = TextEditingController();
final TextEditingController _pscontroller = TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,       
      body: new Container(         
        padding: EdgeInsets.all(30.0),         
        child: Column(           
          mainAxisAlignment: MainAxisAlignment.center,           
          children: <Widget>[             
            Image.asset(               
              'assets/images/logo.png',               
              scale: 2.0,             
            ), 
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                 labelText: 'Email', icon: Icon(Icons.email)
              )
            ),
            TextField(
              decoration: InputDecoration(
                 labelText: 'Password', icon: Icon(Icons.lock)
              ),
               obscureText: true,
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChange(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 15))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), 
                  minWidth: 270,
                  height: 50,
                  child: Text('LOGIN'),
                  color: Color.fromRGBO(250, 50, 12, 1),
                  textColor:  Colors.white,
                  elevation:  15,
                  onPressed: _onPress,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Register New Account"),
              SizedBox(
                height: 20,
              ),
              Text("Forgot Password"),
           ],
        ),
       ),
    );
  }

  void _onChange(bool value) {
    setState(() {
      _isChecked = value;
      print('Check value $value');
    });
  }

  void _onPress() {
    print(_emcontroller.text);
    print(_pscontroller.text);
  }
}
