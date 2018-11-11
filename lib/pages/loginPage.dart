import 'package:flutter/material.dart';

import '../utils/constantes.dart';
import '../utils/auth_service.dart';
import '../utils/globals.dart' as globals;
import './homePage.dart';

AuthService appAuth = new AuthService();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  String _username;
  String _password;
  String _status = 'no-action';

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      final snackbar = SnackBar(
        duration: Duration(seconds: 30),
        content: Row(
          children: <Widget>[Text("  Connexion...")],
        ),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);

      // Email & password matched our validation rules
      // and are saved to _email and _password fields.
      _performLogin();
    }
  }

  void _performLogin() {
    appAuth
      .store(_username.toString().toLowerCase().trim(), _password.toString().trim())
      .then((onValue){
        appAuth.login().then((result) {
          if (result) {
              final snackbar = SnackBar(
                duration: Duration(seconds: 5),
                content: Row(
                  children: <Widget>[Text("  Connexion réussie")],
                ),
              );
              _scaffoldKey.currentState.showSnackBar(snackbar);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
            //Login.showTouchID(context); //Show Touch ID Once After Install
            print(result);
          } else {
            setState(() => this._status = 'rejected');
            /*showDialog(
              context: context,
              );*/
              final snackbar = SnackBar(
                duration: Duration(seconds: 5),
                content: Row(
                  children: <Widget>[Text("  Erreur de connexion")],
                ),
              );
              _scaffoldKey.currentState.showSnackBar(snackbar);
              //globals.Utility.showAlertPopup(context, 'Info', globals.errorMessage);
              print('rejected');
          }
          /*if (!globals.isBioSetup) {
            setState(() {
              print('Bio No Longer Setup');
            });
          }*/
          _scaffoldKey.currentState.hideCurrentSnackBar();
        });
      });
    // This is just a demo, so no actual login here.
    /*final snackbar = SnackBar(
      content: Text('Email: $_username, password: $_password'),
    );

    _scaffoldKey.currentState.showSnackBar(snackbar);
    //Scaffold.of(context).showSnackBar(snackbar);*/
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      key: _scaffoldKey,
      //appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.deepOrange,),
      body: new Container(
        padding: const EdgeInsets.all(48.0),
        decoration: new BoxDecoration(
          color: Color(rouge),
          /*image: new DecorationImage(
            //image: new AssetImage("assets/images/real_pixel.jpg"),
            
            image: new NetworkImage('https://raw.githubusercontent.com/dtanon/moncompte/master/assets/images/real_pixel.jpg'),
            fit: BoxFit.cover,
          ),
        */),
        child: Form( 
          key: formKey,
          child:new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(bottom: 150.0),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                onSaved: (val) => _username = val,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Utilisateur',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white)
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              TextFormField(
                onSaved: (val) => _password = val,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Mot de passe',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white)
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              new MaterialButton(
                minWidth: 310.0,
                padding: EdgeInsets.symmetric( horizontal: 0.0, vertical: 20.0),
                //onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));},
                onPressed: _submit,
                color: Colors.white,
                child: new Text("Connexion"),
              ),
              Text("Version $versionCode", style: TextStyle(color: Colors.white)),
              /*Banner(
                    message: "Bottom End",
                    location: BannerLocation.bottomEnd,
                  ),
              Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  main,
                  Banner(
                    message: "Bottom End",
                    location: BannerLocation.bottomEnd,
                  ),
                ],
              )*/
              //new Text("Home")
            ],
          ),
        ),
        )
      ),
    );
  }
}
