import 'package:flutter/material.dart';

class NewUserScreen extends StatefulWidget {
  @override
  _NewUserScreenState createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';

  void _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      // TODO: Implement your logic to create a new user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) =>
                    value.isEmpty ? 'Please enter a username' : null,
                onSaved: (value) => _username = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value.isEmpty ? 'Please enter an email' : null,
                onSaved: (value) => _email = value,
              ),
              RaisedButton(
                child: Text('Create User'),
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}