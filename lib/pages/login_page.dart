import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/auth/auth_bloc.dart';
import 'package:latihan_bloc/visibility_cubit.dart';
import 'shopeepay.dart'; // Pastikan untuk mengimpor halaman ShopeePay

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: emailC,
              decoration: const InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            BlocConsumer<VisibilityCubit, bool>(
              listener: (context, state) {},
              builder: (context, isObscured) {
                return TextFormField(
                  controller: passC,
                  obscureText: isObscured,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        isObscured ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        context.read<VisibilityCubit>().change();
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEventLogin(
                        email: emailC.text,
                        password: passC.text,
                      ),
                    );
              },
              child: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is AuthStateError) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.message),
                      duration: const Duration(seconds: 2),
                    ));
                  } else if (state is AuthStateLoaded) {
                    // Pindahin ke page shopee nya nih bro
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShopeePay(),
                    ));
                  }
                },
                builder: (context, state) {
                  if (state is AuthStateLoading) {
                    return const Text('Loading...');
                  }
                  return const Text('Login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
