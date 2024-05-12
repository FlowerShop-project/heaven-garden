import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
=======

>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
import 'Home_Page_Widget.dart';
import 'Register.dart';

class SignInScreen extends StatelessWidget {
<<<<<<< HEAD
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
=======
  const SignInScreen({super.key});
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
<<<<<<< HEAD
          decoration: BoxDecoration(
=======
          decoration: const BoxDecoration(
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
            image: DecorationImage(
              image: AssetImage('lib/image/10.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(.3),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
<<<<<<< HEAD
                SizedBox(height: 100),
=======
                const SizedBox(height: 100),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "SIGN IN",
<<<<<<< HEAD
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
=======
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
<<<<<<< HEAD
                        padding: const EdgeInsets.only(right: 16),
=======
                        padding: EdgeInsets.only(right: 16),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                        child: Icon(
                          Icons.alternate_email,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextField(
<<<<<<< HEAD
                          controller: emailController,
=======
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
<<<<<<< HEAD
                          style: TextStyle(color: Colors.white),
=======
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                        ),
                      ),
                    ],
                  ),
                ),
<<<<<<< HEAD
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
=======
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 16),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: TextField(
<<<<<<< HEAD
                        controller: passwordController,
                        obscureText: true, // ให้รหัสผ่านถูกซ่อน
=======
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
<<<<<<< HEAD
                        style: TextStyle(color: Colors.white),
=======
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                      ),
                    ),
                  ],
                ),
<<<<<<< HEAD
=======
                const SizedBox(height: 20),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
<<<<<<< HEAD
                        _signInWithGoogle(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          _signInWithEmailAndPassword(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please enter email and password."),
                            ),
                          );
                        }
=======
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePageWidget(),
                            fullscreenDialog: false,
                          ),
                        );
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
<<<<<<< HEAD
                        backgroundColor: const Color(0xFFF2BED1),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                      child: Text(
=======
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24),
                        backgroundColor: const Color(0xFFF2BED1),
                      ),
                      child: const Text(
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
<<<<<<< HEAD
                SizedBox(height: 10),
=======
                const SizedBox(height: 10),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
<<<<<<< HEAD
                            builder: (context) => RegisterPage(),
=======
                            builder: (context) => const RegisterPage(),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                            fullscreenDialog: false,
                          ),
                        );
                      },
<<<<<<< HEAD
                      child: Text(
=======
                      child: const Text(
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                        "Never Sign In_Register?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
<<<<<<< HEAD
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // Additional buttons or widgets you may have added
                  ],
                ),
                SizedBox(height: 40),
=======
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[],
                ),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
              ],
            ),
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        // หลังจากเข้าสู่ระบบสำเร็จ ทำการเพิ่มข้อมูลลงใน Firestore
        addUserToFirestore(user);
        
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageWidget()),
        );
      }
    } catch (e) {
      print(e);
      if (e is FirebaseAuthException) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("The email address is not registered."),
            ),
          );
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Incorrect password. Please try again."),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Failed to sign in. Please check your credentials."),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("An error occurred. Please try again later."),
          ),
        );
      }
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential userCredential = await _auth.signInWithCredential(credential);
        final User? user = userCredential.user;

        // Check if it's a new account
        if (user != null && userCredential.additionalUserInfo!.isNewUser) {
          // If it's a new account, add user data to Firestore
          addUserToFirestore(user);
        }

        // Navigate to home page after successful sign-in
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageWidget()),
        );
      }
    } catch (e) {
      print('Error signing in with Google: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("An error occurred. Please try again later."),
        ),
      );
    }
  }

  // Method to add user data to Firestore
  void addUserToFirestore(User user) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid) // Use the user's UID as the document ID
        .set({'name': 'John Doe', 'age': 30}) // Add the data you want to store
        .then((value) => print('User added')) // Successful add operation
        .catchError((error) => print('Failed to add user: $error')); // Error during add operation
  }
=======
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
}
