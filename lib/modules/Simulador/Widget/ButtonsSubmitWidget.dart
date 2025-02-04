import 'package:demobb/modules/Simulador/Widget/ButtonContinueWidget.dart';
import 'package:flutter/material.dart';

// This the widget where the BLoC states and events are handled.
class ButtonsSubmitWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String page;

  const ButtonsSubmitWidget({super.key, required this.formKey, required this.page});

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 24,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        isDesktop(context)
            ? Container(
                height: 48,
                width: 143,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFF008392)),
                        borderRadius: BorderRadius.circular(36))),
                child: ElevatedButton(
                  onPressed: () {
                    print('OASODALSAD');
                    Navigator.pushNamed(context, this.page);
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      formKey.currentState?.save();
                      print(formKey.currentState?.toString());
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  child: const Center(
                    child: Text(
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            color: Color(0xFF008392),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        'Atrás'),
                  ),
                ))
            : Container(),
        isDesktop(context)
            ? SizedBox(
                height: 48,
                width: 143,
                child: ButtonContinueWidget(formKey: formKey))
            : Expanded(
                child: SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ButtonContinueWidget(formKey: formKey))),
      ],
    );
  }
}
