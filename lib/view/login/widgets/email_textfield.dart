import 'package:bloc_clean_arcitecture/bloc/login_bloc/login_bloc.dart';
import 'package:bloc_clean_arcitecture/utils/validations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailTextField({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          decoration: const InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter email';
            } else if (Validations.emailValidator(value)) {
              return 'Email is invalid';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
