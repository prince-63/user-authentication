import "package:flutter/material.dart";
import "package:my_app/screens/signup.dart";
// import "package:flutter/services.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 236, 236, 236),
          secondary: const Color.fromARGB(255, 76, 145, 175),
        ),
        fontFamily: "Lato",
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  width: 350,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "Lets Sign you in",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Welcome Back,",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        "You have been missed",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                          ),
                          hintText: "Email, phone & username",
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        width: 350,
                        child: const Text(
                          "Forgot Password?",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: 350,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          color: Colors.black,
                        ),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Container(
                                width: 150,
                                height: 1,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Text(
                              "or",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: Container(
                                width: 150,
                                height: 1,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/logos/Google logo.png",
                            ),
                            Image.asset("assets/logos/Facebook.png"),
                            Image.asset("assets/logos/Apple.png"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don`t have an account ?",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
