import'package:flutter/material.dart';
import 'package:clean_arch_app/features/authentication/presentation/widgets/button_widget.dart';
import 'package:clean_arch_app/features/authentication/presentation/widgets/text_field_widget.dart';


class LogInPage extends StatefulWidget{
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
                controller: _emailController,
                hint: 'Email Address',
                icon: Icons.email
            ),
            const SizedBox(height: 20,),
            TextFieldWidget(
                controller: _passwordController,
                hint: 'Password',
                icon: Icons.lock
            ),
            const SizedBox(height: 51,),
            ButtonWidget(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/features/categories/presentation/pages/categories_page');
                },
                text: 'LogIn'),
          ],
        ),
      ),
    );
  }
}