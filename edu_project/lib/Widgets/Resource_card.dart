import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class ResourceCard extends StatefulWidget {
  final String subject;
  final String doctor;
  final String pdf;
  final String video;
  final String image;
  final Icon? icon1;

  ResourceCard({
    super.key,
    required this.subject,
    required this.doctor,
    required this.pdf,
    required this.video,
    required this.image,
    this.icon1,
  });

  @override
  State<ResourceCard> createState() => _ResourceCardState();
}

class _ResourceCardState extends State<ResourceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
      child: Card(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Row(
          children: [
            Container(
              width: 150,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.subject,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color(0xff164863),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      widget.doctor,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff164863),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.picture_as_pdf,
                            color: Color(0xff164863), size: 22),
                        const SizedBox(width: 5),
                        Text(
                          widget.pdf,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff164863),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.video_collection,
                            color: Color(0xff164863), size: 22),
                        const SizedBox(width: 5),
                        Text(
                          widget.video,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff164863),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: FavoriteButton(
                            iconSize: 35,
                            isFavorite: false,
                            valueChanged: (_isFavorite) {
                           
                            },
                          ),
                        )
                      ],
                    ),

                    // SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// IconButton(onPressed: () {},
                     
//                          icon: SizedBox(child: widget.icon1),
//                          ),