import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom form"),
      ),
      body: Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Image.asset(
            'resources/Tulips.jpg'
            , height: 100),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Please input your email',
              icon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => print(value),
            validator: (value){
              if (value.isEmpty){
                return 'Plese enter some text';
              }
            },
          ),TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Please input your Password',
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            keyboardType: TextInputType.text,
            onSaved: (value) => print(value),
            validator: (value){
              if (value.isEmpty){
                return 'Plese enter some text';
              }
            },
          ),
          RaisedButton(
            child: Text("continue"),
            onPressed: () {
              _formKey.currentState.validate();
            }
          ),
        ],
      ) ,
      )
    );
    // return Form(
    //   key: _formKey,
    //   child: ListView(),
    // );
  }}