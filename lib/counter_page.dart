import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/bilangan_primer/bilangan_primer_cubit.dart';
import 'package:latihan_bloc/bloc/ganjil_genap/ganjil_genap_cubit.dart';
import 'package:latihan_bloc/visibility_cubit.dart';
import 'counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GanjilGenapCubit, int>(
            builder: (context, state) {
              return Column(
                children: [
                  Text(state == 0 ? 'Genap' : 'Ganjil'),
                  ElevatedButton(
                    onPressed: () {
                      context.read<GanjilGenapCubit>().hitunganGanjilGenap(5);
                    },
                    child: const Text('Ganjil/Genap'),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            },
          ),

          // BlocBuilder untuk CounterCubit
          BlocBuilder<CounterCubit, int>(
            builder: (context, count) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.read<CounterCubit>().decrement(),
                      child: const Text('-'),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '$count',
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => context.read<CounterCubit>().increment(),
                      child: const Text('+'),
                    ),
                  ],
                ),

                // // Cek Bilangan Prima
                // BlocBuilder<BilanganPrimerCubit, bool>(
                //   builder: (context, isPrime) {
                //     return Column(
                //       children: [
                //         ElevatedButton(
                //           onPressed: () {
                //             context
                //                 .read<BilanganPrimerCubit>()
                //                 .hitungBilanganPrimer(
                //                     count); // Menggunakan count dari CounterCubit
                //           },
                //           child: const Text("Cek Bilangan Prima"),
                //         ),
                //         Text(
                //           isPrime ? "Bilangan Prima" : "Bukan Bilangan Prima",
                //           style: const TextStyle(fontSize: 18),
                //         ),
                //       ],
                //     );
                //   },
                // ),

                BlocBuilder<VisibilityCubit, bool>(
                  builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        context.read<VisibilityCubit>().change();
                      },
                      icon: Icon(
                        state ? Icons.visibility : Icons.visibility_off,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.clear),
            onPressed: () => context.read<CounterCubit>().multiply(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.discount_outlined),
            onPressed: () => context.read<CounterCubit>().divide(),
          ),
        ],
      ),
    );
  }
}
