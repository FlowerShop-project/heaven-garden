import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signin_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String firstNameErrorMessage = '';
  String lastNameErrorMessage = '';
  String emailErrorMessage = '';
  String passwordErrorMessage = '';

  Future<void> registerWithEmailAndPassword() async {
  // Check if passwords match and meet length requirement
  if (_passwordController.text != _confirmPasswordController.text) {
    setState(() {
      passwordErrorMessage = 'Passwords do not match';
    });
    return;
  } else if (_passwordController.text.length < 6) {
    setState(() {
      passwordErrorMessage = 'Password must be at least 6 characters long';
    });
    return;
  }

  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    // Registration successful, you can now navigate to the home page or perform any other actions
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
        fullscreenDialog: false,
      ),
    );
  } catch (e) {
    print("Error registering user: $e");
    // Handle registration error, display error message or update UI accordingly
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/image/10.jpeg'), // Adjust the path to your image
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 50),
                  ListTile(
                    leading: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                    title: Text(
                      "SIGN UP",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: const OutlineInputBorder(),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      errorText: firstNameErrorMessage.isNotEmpty ? firstNameErrorMessage : null,
                    ),
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {
                      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                        setState(() {
                          _firstNameController.text = _firstNameController.text.replaceAll(RegExp(r'[^a-zA-Z]'), '');
                          _firstNameController.selection = TextSelection.fromPosition(TextPosition(offset: _firstNameController.text.length));
                          firstNameErrorMessage = 'Please enter valid first name (alphabetic characters only)';
                        });
                      } else {
                        setState(() {
                          firstNameErrorMessage = '';
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: const OutlineInputBorder(),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      errorText: lastNameErrorMessage.isNotEmpty ? lastNameErrorMessage : null,
                    ),
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {
                      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                        setState(() {
                          _lastNameController.text = _lastNameController.text.replaceAll(RegExp(r'[^a-zA-Z]'), '');
                          _lastNameController.selection = TextSelection.fromPosition(TextPosition(offset: _lastNameController.text.length));
                          lastNameErrorMessage = 'Please enter valid last name (alphabetic characters only)';
                        });
                      } else {
                        setState(() {
                          lastNameErrorMessage = '';
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: const OutlineInputBorder(),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      errorText: emailErrorMessage.isNotEmpty ? emailErrorMessage : null,
                    ),
                    style: const TextStyle(color: Colors.white),
                    onChanged: (value) {
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        setState(() {
                          emailErrorMessage = 'Please enter a valid email address';
                        });
                      } else {
                        setState(() {
                          emailErrorMessage = '';
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: const OutlineInputBorder(),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      errorText: passwordErrorMessage.isNotEmpty ? passwordErrorMessage : null,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                      border: const OutlineInputBorder(),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      errorText: passwordErrorMessage.isNotEmpty ? passwordErrorMessage : null,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      String firstName = _firstNameController.text.trim();
                      String lastName = _lastNameController.text.trim();
                      String email = _emailController.text.trim();
                      String password = _passwordController.text.trim();
                      String confirmPassword = _confirmPasswordController.text.trim();

                      // Check if first name and last name contain only alphabetic characters
                      if (!RegExp(r'^[a-zA-Z]+$').hasMatch(firstName)) {
                        setState(() {
                          firstNameErrorMessage = 'Please enter valid first name (alphabetic characters only)';
                        });
                      } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(lastName)) {
                        setState(() {
                          lastNameErrorMessage = 'Please enter valid last name (alphabetic characters only)';
                        });
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
                        setState(() {
                          emailErrorMessage = 'Please enter a valid email address';
                        });
                      } else {
                        // Add your registration logic here
                        registerWithEmailAndPassword(); // Call registration function
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
