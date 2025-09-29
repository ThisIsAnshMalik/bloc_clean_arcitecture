import 'package:bloc_clean_arcitecture/bloc/login_bloc/login_bloc.dart';
import 'package:bloc_clean_arcitecture/view/login/widgets/email_textfield.dart';
import 'package:bloc_clean_arcitecture/view/login/widgets/login_button.dart';
import 'package:bloc_clean_arcitecture/view/login/widgets/password_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailTextField(emailFocusNode: emailFocusNode),
              SizedBox(height: 20),
              PasswordTextField(passwordFocusNode: passwordFocusNode),
              SizedBox(height: 20),
              LoginButton(formkey: _formkey),
            ],
          ),
        ),
      ),
    );
  }
}
