import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Este es el widget donde se manejan los estados y eventos de BLoC.
// ignore: must_be_immutable
class NumbersOtpWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final FormFieldSetter<String>? onSaved;
  final double? widthPersonalized;
  final double? heightPersonalized;
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  int currentIndex = 0;
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  NumbersOtpWidget({super.key, required this.formKey, this.widthPersonalized, this.heightPersonalized, this.onSaved});

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      controllers[index].text = value[value.length - 1];
      controllers[index].selection = TextSelection.fromPosition(
          TextPosition(offset: controllers[index].text.length));
      if (index < 5) {
        focusNodes[index + 1].requestFocus();
        currentIndex = index + 1;
      } else {
        onSaved!(controllers.map((controller) => controller.text).join());
      }
    }
  }

  void _onKeyPress(KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.backspace) {
        if (controllers[currentIndex].text.isEmpty && currentIndex > 0) {
          focusNodes[currentIndex - 1].requestFocus();
          currentIndex -= 1;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 12),
      child: SizedBox(
          width: widthPersonalized ?? double.infinity,
          height: heightPersonalized !=0 ? heightPersonalized: 90,
          child: KeyboardListener(
              focusNode: FocusNode(),
              onKeyEvent: (event) => _onKeyPress(event),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < 6; i++)
                    Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: TextFormField(
                            controller: controllers[i],
                            focusNode: focusNodes[i],
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            enableInteractiveSelection: false,
                            onChanged: (value) => _onChanged(value, i),
                            style: TextStyle(fontSize: 16),
                            autofocus: false,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                enabled: true,
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFCED4DA), width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFCED4DA), width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Color(0xFF212529), width: 2)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Color(0xFFCED4DA), width: 1),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Color(0xFFCED4DA), width: 1),
                                )),
                          ),
                        )),
                ],
              ))),
    );
  }
}
