import 'package:demobb/shared/forms/Blocs/generic_input_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenericInput extends StatelessWidget {
  final String textLabel;
  final FormFieldSetter<String>? onSaved;
  final bool? hiddenOption;
  final bool obscureText;
  GenericInput(
      {super.key,
      required this.textLabel,
      required this.onSaved,
      this.hiddenOption,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  child: Text(textLabel,
                      style: TextStyle(
                          color: Color(0xFF495057),
                          fontSize: 16,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                          height: 1.50))),
            ]),
      ),
      Container(
        padding: EdgeInsets.only(bottom: 24),
        width: double.infinity,
        child: BlocBuilder<GenericInputBloc, bool>(
          builder: (context, state) {
            print('ndnsandad estado:: ');
            print(state);
            return TextFormField(
              obscureText: obscureText && state,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              maxLines: 1,
              enableInteractiveSelection: false,
              onTap: () {},
              style: TextStyle(fontSize: 16),
              validator: (sd) {
                return sd == null || sd.isEmpty
                    ? "Por favor, escriba los campos..."
                    : null;
              },
              onSaved: onSaved,
              autofocus: false,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  suffixIcon: hiddenOption != null && hiddenOption == true
                      ? IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            state == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color.fromRGBO(33, 37, 41, 1),
                          ),
                          onPressed: () {
                            context.read<GenericInputBloc>().add(Showed());
                          },
                        )
                      : null,
                  enabled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                  )),
            );
          },
        ),
      )
    ]);
  }
}
