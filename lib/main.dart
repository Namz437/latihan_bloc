// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:latihan_bloc/bloc/auth/auth_bloc.dart';
import 'package:latihan_bloc/bloc/bilangan_primer/bilangan_primer_cubit.dart';
import 'package:latihan_bloc/bloc/ganjil_genap/ganjil_genap_cubit.dart';
import 'package:latihan_bloc/pages/login_page.dart'; // Pastikan ini ada
import 'package:latihan_bloc/pages/pulsa.dart'; // Pastikan ini ada
import 'package:latihan_bloc/pages/shopeepay.dart'; // Pastikan ini ada
import 'package:latihan_bloc/visibility_cubit.dart';

import 'counter_cubit.dart'; // Pastikan ini ada

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: "/login",
      routerNeglect: true,
      routes: [
        GoRoute(
          path: "/login",
          name: "login",
          builder: (context, state) {
            return LoginPage();
          },
        ),
        GoRoute(
          path: "/pulsa",
          name: "pulsa",
          builder: (context, state) {
            return const Pulsa();
          },
        ),
        GoRoute(
          path: "/shopee",
          name: "shopee",
          builder: (context, state) {
            return const ShopeePay();
          },
        ),
      ],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider<VisibilityCubit>(
          create: (context) => VisibilityCubit(),
        ),
        BlocProvider<GanjilGenapCubit>(
          create: (context) => GanjilGenapCubit(),
        ),
        BlocProvider(
          create: (context) => BilanganPrimerCubit(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
