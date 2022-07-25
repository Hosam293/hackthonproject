import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/view/widgets/AuthWidgets/Cubit/AuthStates.dart';

class AuthCubit extends Cubit<AuthStates>
{
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context)=>BlocProvider.of<AuthCubit>(context);

  bool isHover =false;

  void changeHover(value)
  {
    isHover =value;
    emit(ChangeHover());
  }


}