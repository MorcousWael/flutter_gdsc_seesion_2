import 'package:flutter/material.dart';
import 'package:session3/widgets/input_field.dart';
import 'package:session3/util/validators.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool _passwordHidden =true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Registration Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
            const Center(
              child: Text("Please enter your data",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
            ),
              const SizedBox(height: 10),
            InputField(controller: _nameController,
                hintText: "Enter Your Username",
                prefix: const Icon(Icons.person),
                validator: (String? input)=>Validators.checkLengthValidator(input, 5)
            ),
            const SizedBox(height: 10),
            InputField(controller: _passController,
                hintText: "Enter Your password",
                prefix: const Icon(Icons.lock),
                suffix: IconButton(icon: Icon(_passwordHidden? Icons.visibility_off : Icons.visibility),onPressed: (){
                  setState(() {
                  _passwordHidden = !_passwordHidden;
                }
                );
                },
                ),
                obsecureText: _passwordHidden,
                validator: (String? input)=>Validators.checkLengthValidator(input, 8)
    ),

            const SizedBox(height: 10),
            InputField(controller: _emailController,
                obsecureText: false,
                hintText: "Enter Your email",
                prefix: const Icon(Icons.email),
                validator: (String? input)=>Validators.checkLengthValidator(input, 5)
            ),
            const SizedBox(height: 10),
            InputField(controller: _phoneController,
                hintText: "Enter Your phoneNumber",
                prefix: const Icon(Icons.phone),
                validator: (String? input)=>Validators.checkLengthValidator(input, 11)
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _register, child: const Text("Register",style: TextStyle(fontSize: 20),))
          ],),
        ),
      ),
    );
  }
  void _register() {
    if (_formKey.currentState?.validate() ?? false) {
      debugPrint(_nameController.text);
    }
  }
}
