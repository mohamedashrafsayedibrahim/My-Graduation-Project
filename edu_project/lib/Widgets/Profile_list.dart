import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/Images/grad.jpeg"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: Color.fromARGB(255, 249, 245, 247),
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/Images/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}






class ProfileMenu extends StatefulWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle( fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.bold,),
          foregroundColor:Color(0xFF164863), padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: widget.press,
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon,
              // ignore: deprecated_member_use
              color: Color(0xFF164863),
              width: 22,
            ),
            const SizedBox(width: 20),
            Expanded(child: Text(widget.text)),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
