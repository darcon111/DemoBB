import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final bool automaticallyImplyLeading;

  const HeaderWidget({super.key, required this.isDesktop,
  required this.automaticallyImplyLeading});


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      clipBehavior: Clip.none,
      forceMaterialTransparency: false,
      toolbarOpacity: automaticallyImplyLeading? 1 : 0,
      surfaceTintColor: Colors.white,
      title: Row(
        mainAxisAlignment: isDesktop || automaticallyImplyLeading
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/img/headerIconBB.svg',
            height: 20,
            width: 174,
            semanticsLabel: "Icon BB",
          ),
          isDesktop || automaticallyImplyLeading
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
