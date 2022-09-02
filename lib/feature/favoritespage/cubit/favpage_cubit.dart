import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favpage_state.dart';

class FavpageCubit extends Cubit<FavpageState> {
  FavpageCubit() : super(FavpageInitial());
  
}
