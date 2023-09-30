import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyIcons extends StatelessWidget {
  final String imageName;

  const MyIcons({super.key, required this.imageName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // height: 60,
      // width: 60,
      decoration: BoxDecoration(
          color:
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
          borderRadius: BorderRadius.circular(45)
          //more than 50% of width makes circle
          ),
      child: Image.asset(
        'assets/$imageName.png',
        // fit: BoxFi
        cacheHeight: 40,
        cacheWidth: 40,
      ),
    );
    //   SizedBox(
    //     height: 15,
    //   ),
    //   Text("Appointment")
    // );
  }
}
