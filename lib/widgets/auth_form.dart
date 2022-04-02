import 'package:e_commereceapp/screen/screen/ListViewHomePage.dart';
import 'package:e_commereceapp/screen/screen/auth_screen.dart';
import 'package:e_commereceapp/screen/screen/project_detail.dart';
import 'package:e_commereceapp/services/auth.dart';
import 'package:e_commereceapp/widgets/original_button.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/screen/screen/auth_screen.dart';
// import 'package:untitled/services/auth.dart';
// import 'package:untitled/widgets/original_button.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;
  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  String _email = '', _passowrd = '';
  AuthBase authBase = AuthBase();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            SizedBox(height: 16),
            TextFormField(
              onChanged: (value) => _email = value,
              validator: (value) =>
                  value!.isEmpty ? 'Enter a valid email' : null,
              decoration: InputDecoration(
                  labelText: 'Enter your email',
                  hintText: 'ex: test@gmail.com'),
            ),
            SizedBox(height: 12),
            TextFormField(
              onChanged: (value) => _passowrd = value,
              validator: (value) => value!.length < 6
                  ? 'Your password must be larger than 6 characters'
                  : null,
              decoration: InputDecoration(labelText: 'Enter your password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            OriginalButton(
                text: widget.authType == AuthType.login ? 'Login' : 'Register',
                onPressed: () async {
                  if (_formkey.currentState!.validate()) {
                    if (widget.authType == AuthType.login) {
                      await authBase
                          .loginWithEmailAndPassword(
                              email: _email, password: _passowrd)
                          .then(
                            (value) => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ProjectDetail())),
                          );
                    } else {
                      await authBase
                          .registerWithEmailAndPassword(
                              email: _email, password: _passowrd)
                          .then(
                            (value) => Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ProjectDetail())),
                          );
                    }
                  }
                },
                textColor: Colors.white,
                bgColor: Colors.cyan),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                if (widget.authType == AuthType.login)
                  Navigator.of(context).pushReplacementNamed('register');
                else
                  Navigator.of(context).pushReplacementNamed('login');
              },
              child: Text(
                widget.authType == AuthType.login
                    ? 'Do/not have an account?'
                    : 'You have an account?',
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
