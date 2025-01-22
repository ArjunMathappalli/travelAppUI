import 'package:flutter/material.dart';
import 'package:travel_app_ui/Pages/login_screen.dart';

class Spalshscreen extends StatefulWidget {
  const Spalshscreen({super.key});

  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Get Ready for your\nLifetime Journery",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing.Lorem Ipsum has been the industry's standard dummy when an unknown printer took a type specimen book.It has survived not only five centuries, but also the leap into electronic typesetting,",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  LoginScreen(),
                      ));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 13, 184, 206),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    "GET START",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
