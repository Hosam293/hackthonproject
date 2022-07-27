import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? titleController;

  String? title;
  Widget? suffixIcon;
  Widget? prefixIcon;
  FormFieldValidator<String>? validator;
  TextInputType? type;
  GestureTapCallback? onTap;
  bool obscureText;
  bool readonly;
  double? borderRadius;

  CustomFormField(
      {Key? key,
      this.titleController,
        this.readonly=false,
        this.borderRadius=50,
      this.title,
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.type,
      this.onTap,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius!),
        side: BorderSide.none,
      ),
      child: TextFormField(
        readOnly: readonly,


        onTap: onTap,
        decoration: InputDecoration(

          border:  OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          labelText: title,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,

          // prefixIcon: prefixIcon,
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
        validator: validator,
        cursorColor: Colors.grey,
        maxLines: 1,
        controller: titleController,
        keyboardType: type,
        obscureText: obscureText,
      ),
    );
  }
}
