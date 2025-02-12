import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final bool automaticallyImplyLeading;
  final bool logoutButton;

  const HeaderWidget({super.key, required this.isDesktop,
  required this.automaticallyImplyLeading, required this.logoutButton});


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: automaticallyImplyLeading,
        clipBehavior: Clip.none,
        forceMaterialTransparency: false,
        toolbarOpacity: automaticallyImplyLeading? 1 : 0,
        surfaceTintColor: Colors.white,
        title: Row(
          mainAxisAlignment: isDesktop || automaticallyImplyLeading ||logoutButton
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/img/headerIconBB.svg',
              height: 20,
              width: 174,
              semanticsLabel: "Icon BB",
            ),
            isDesktop || logoutButton
                ? SvgPicture.asset(
                    height: 20,
                    width: 20,
                    'assets/img/logout.svg',
                    semanticsLabel: "Logout",
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
