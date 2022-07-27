import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/EndPoints.dart';
import 'package:petology/Controller/DioHelper.dart';
import 'package:petology/model/AuthLogin_Signup/LoginModel.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthStates.dart';


class AuthCubit extends Cubit<AuthStates>
{
  AuthCubit() : super(AuthInitialState());
  static AuthCubit get(context)=>BlocProvider.of<AuthCubit>(context);


 // static String? token;






  LoginModel? loginModel;
  void userLogin({required String email, required String password}) {
    print('here is th login');

    emit(LoginLoadState());
    DioHelper.postData(
        url: loginUrl,
        data: {'email': email, 'password': password}).then((value) {
      print(value.data);
      loginModel = LoginModel.fromJson(value.data);
      emit(LoginSuccessState(loginModel!));
    }).catchError((onError) {
      print(onError.toString());
      emit(LoginErrorState());
    });
  }

  void userRegister({required String email, required String password,required String phone,required String firstName,required String lastName,required String country}) {
    print('here is th reigster');
    emit(RegisterLoadState());
    DioHelper.postData(
        url: registerUrl,
        data: {'email': email, 'password': password,'firstName':firstName,'phoneNumber':phone,'lastName':lastName,'country':country}).then((value) {
      print(value.data);
      emit(RegisterSuccessState());
    }).catchError((onError) {
      print(onError.toString());
      emit(RegisterErrorState());
    });
  }


}