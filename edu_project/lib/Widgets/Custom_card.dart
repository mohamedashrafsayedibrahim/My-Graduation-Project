// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Card(
            color: Color.fromARGB(255, 18, 95, 104),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 110,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5,left: 10),
                        child: const Text(
                          'View Content',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 255, 255),
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                 
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 75,
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            child: Image.asset(
              widget.image,
              width: 195,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
