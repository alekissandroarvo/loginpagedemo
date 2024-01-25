import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Login Page',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blueGrey,
      ),
      // A widget which will be started on application startup
      home: LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatelessWidget {
  final String title;
  LoginPage({super.key, required this.title});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Form(
        key: _formKey,
        child: Center(
            child: Container(
          width: MediaQuery.of(context).size.width > 600 ? 500 : 300,
          height: MediaQuery.of(context).size.width > 600 ? 400 : 250,
          child: Card(
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //email field
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Email'),
                      hintText: 'exemple@servermail.com',
                    ),
                    controller: email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //password field
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        label: Text('Password'), hintText: 'secret_password'),
                    controller: email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Enter'))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
