
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({
    Key? key,
    //required this.size,
  }) : super(key: key);

  //final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        //color: Colors.grey,
        height: size.height * .3,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 15,
              right: 15,
              height: size.height * .27,
              child: ClipRRect(
                //borderRadius: BorderRadis.circular(50),
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://i.pinimg.com/736x/16/cc/37/16cc376e6a132210f01576b927e9c661.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                // left: 10,
                // right: 10,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.6),
                                blurRadius: 15,
                                offset: Offset(0, 15))
                          ]),
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              Text('50.2k'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.comment_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              Text('490'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.share),
                              SizedBox(
                                width: 5,
                              ),
                              Text('32'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
