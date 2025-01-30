import 'package:flutter/material.dart';

class GenericInput extends StatelessWidget {
  final String textLabel;
  const GenericInput({super.key, required this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                    child: Text(textLabel,
                        style: TextStyle(
                            color: Color(0xFF495057),
                            fontSize: 16,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                            height: 1.50))),
              )
            ]),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        width: double.infinity,
        child: TextFormField(
          textAlign: TextAlign.left,
          keyboardType: TextInputType.text,
          maxLines: 1,
          enableInteractiveSelection: false,
          onTap: () {},
          style: TextStyle(fontSize: 16),
          validator: (sd) {
            return sd == null || sd.isEmpty
                ? null
                : "Por favor, escriba los campos...";
          },
          autofocus: false,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              enabled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
        ),
      )
    ]);
  }
}
