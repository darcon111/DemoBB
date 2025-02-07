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
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: isDesktop
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/img/headerIconBB.svg',
            height: 20,
            width: 174,
            semanticsLabel: "Icon BB",
          ),
          isDesktop
              ? SvgPicture.asset(
                  height: 20,
                  width: 20,
                  'assets/img/logout.svg',
                  semanticsLabel: "Logout",
                )
              : Container()
        ],
      ),
    );
  }
}
