import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// This the widget where the BLoC states and events are handled.
class AmountWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController _controller = TextEditingController();

  AmountWidget({super.key, required this.formKey});
  String formatNumber(String value) {
    if (value.isEmpty) return "\$";

    // Remueve caracteres no numéricos excepto el signo de dólar
    String newValue = value.replaceAll(RegExp(r'[^\d]'), '');
    if (newValue.isEmpty) return "\$";

    // Formatea con comas
    final formatter = NumberFormat("#,###");
    return "\$${formatter.format(int.parse(newValue))}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Modifica tu monto',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF495057),
              fontSize: 16,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
              height: 1.50),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 24),
          width: double.infinity,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            initialValue: '\$10,000',
            maxLines: 1,
            enableInteractiveSelection: false,
            onTap: () {},
            style: TextStyle(
                fontSize: 36,
                color: Color(0xFF212529),
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w500),
            validator: (sd) {
              return sd == null || sd.isEmpty
                  ? "Por favor, escriba los campos..."
                  : null;
            },
            onSaved: (sd) {},
            onChanged: (value) {
              String newText = formatNumber(value);
              _controller.value = TextEditingValue(
                text: newText,
                selection: TextSelection.collapsed(offset: newText.length),
              );
            },
            autofocus: false,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                enabled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                  borderRadius: BorderRadius.zero,
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                  borderRadius: BorderRadius.zero,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Color(0xFFCED4DA), width: 1),
                )),
          ),
        ),
        Text('Solicita desde \$1,000 hasta \$20,000',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF6C757D),
          fontSize: 14,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
        )
      ],
    );
  }
}
