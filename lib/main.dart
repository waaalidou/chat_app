import 'package:flutter/material.dart';

import 'chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeData.light().colorScheme.copyWith(
              primary: const Color.fromRGBO(1, 166, 171, 1),
            ),
        fontFamily: "lato",
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(243, 243, 243, 1)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
                width: double.infinity,
              ),
              Center(
                child: SizedBox(
                    height: 105, child: Image.asset("assets/images/logo.png")),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 33,
                    fontFamily: "lato",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Get in touch with millions of people",
                style: TextStyle(color: Colors.grey, letterSpacing: .9),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Continue as",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: const Color.fromRGBO(1, 166, 171, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(38.0),
                ),
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: ListTile(
                    dense: true,
                    leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                    ),
                    title: const Center(
                        child: FittedBox(
                      child: Text(
                        'Seffih Oualid Redouane',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                    subtitle: const Center(
                      child: Text(
                        "Active 20 min ago",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "Login to another account",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Email',
                  filled: true,
                  fillColor: Color.fromRGBO(159, 159, 159, 0.2),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(23, 15, 20, 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                  isDense: true,
                  hintText: 'Password',
                  filled: true,
                  fillColor: Color.fromRGBO(159, 159, 159, 0.2),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(23, 15, 5, 15),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("You do not have an account ?"),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "SignUp Now",
                      style: TextStyle(
                          color: Color.fromRGBO(1, 166, 171, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "All copyrights reserved © 2022-2023",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
