import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bilangan_primer_state.dart';

class BilanganPrimerCubit extends Cubit<bool> {
  BilanganPrimerCubit() : super(false);

  void hitungBilanganPrimer(int i) {
    bool result = _isPrime(i);
    emit(result);
  }

  bool _isPrime(int i) {
    if (i <= 1) return false;
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) return false;
    }
    return true;
}
}