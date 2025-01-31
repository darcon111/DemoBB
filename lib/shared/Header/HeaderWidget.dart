import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// This the widget where the BLoC states and events are handled.
class HeaderWidget extends StatelessWidget  implements PreferredSizeWidget {
  final bool isDesktop;
  const HeaderWidget({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: EdgeInsets.only(left: 128, right: 128),
        child: Row(
          mainAxisAlignment: isDesktop
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/img/headerIconBB.svg',
              semanticsLabel: "Icon BB",
            ),
            isDesktop
                ? SvgPicture.asset(
                    'assets/img/logout.svg',
                    semanticsLabel: "Logout",
                  )
                : Container()
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
