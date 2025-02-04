import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// This the widget where the BLoC states and events are handled.
class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;

  @override
  final Size preferredSize;

  const HeaderWidget({Key? key, required this.isDesktop})
      : preferredSize = const Size.fromHeight(64),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    SafeArea(child:
      Container(
        width: MediaQuery.of(context).size.width,
       color: Colors.white,
       height: 64,
    child:

    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isDesktop
            ? SvgPicture.asset(
          height: 25,
          'assets/img/logout.svg',
          semanticsLabel: "Logout",
        ):
        SvgPicture.asset(
          'assets/img/headerIconBB.svg',
          height: 25,
          semanticsLabel: "Icon BB",
        )
      ]
    )


    ));
  }
}
