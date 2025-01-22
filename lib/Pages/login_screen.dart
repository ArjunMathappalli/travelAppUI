import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image2.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              _appName(),
              _inputFunction(),
              Expanded(child: SizedBox()),
              _loginButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _appName() {
    return const Column(
      children: <Widget>[
        Text(
          "Travello",
          style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        Text(
          "Travel with Us",
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  Widget _inputFunction() {
    return Container(
      child: Column(
        children: [
          _emailInput(),
          _passwordInput(),
          _forgotPass(),
        ],
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelText: "Email", suffixIcon: Icon(Icons.check_circle)),
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      child: TextField(
        obscureText: passwordview,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  passwordview = !passwordview;
                });
              },
              child:
                  Icon(passwordview ? Icons.visibility : Icons.visibility_off)),
        ),
      ),
    );
  }

  Widget _forgotPass() {
    return InkWell(
      onTap: () {
        print("forgotpas clicked...");
      },
      child: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(fontWeight: FontWeight.w500),
          )),
    );
  }

  Widget _loginButton() {
    return Container(
        child: Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dont have Account?",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "SignUp",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              color: Colors.deepOrange[300],
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: Text(
            "LOGIN",
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          )),
        ),
      ],
    ));
  }
}
