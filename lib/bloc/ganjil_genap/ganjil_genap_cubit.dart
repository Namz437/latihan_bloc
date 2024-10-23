import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ganjil_genap_state.dart';

class GanjilGenapCubit extends Cubit<int> {
  GanjilGenapCubit() : super(5);

  void hitunganGanjilGenap(int i) {
    emit((state + i) % 2);
    print(state);
  }
}
