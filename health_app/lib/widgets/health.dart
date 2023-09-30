import 'package:flutter/material.dart';
import 'package:health_app/models/my_icons.dart';

class Health extends StatelessWidget {
  const Health();
  void _showMoreBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: List.generate(
              (hospitalIcons.length / 4).ceil(),
              (rowIndex) {
                int startIndex = rowIndex * 4;
                int endIndex = (rowIndex + 1) * 4;
                endIndex = endIndex > hospitalIcons.length
                    ? hospitalIcons.length
                    : endIndex;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32, bottom: 20),
                      child: Text(
                        names[rowIndex],
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ), // Add your text above each row
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1, // Adjust this value for spacing
                        crossAxisSpacing:
                            16, // Horizontal spacing between items
                        mainAxisSpacing: 8.0, // Vertical spacing between items
                      ),
                      itemCount: endIndex - startIndex,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return hospitalIcons[startIndex + index];
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(60)
                  //more than 50% of width makes circle
                  ),
              child: Image.asset(
                'assets/appointment.png',
                // fit: BoxFit.cover,
                cacheHeight: 50,
                cacheWidth: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Appointment")
          ],
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(60)
                  //more than 50% of width makes circle
                  ),
              child: Image.asset(
                'assets/hospital.png',
                // fit: BoxFit.cover,
                cacheHeight: 50,
                cacheWidth: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Hospital")
          ],
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(60)
                  //more than 50% of width makes circle
                  ),
              child: Image.asset(
                'assets/virus.png',
                // fit: BoxFit.cover,
                cacheHeight: 50,
                cacheWidth: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Covid-19")
          ],
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(60)
                  //more than 50% of width makes circle
                  ),
              child: InkWell(
                onTap: () => _showMoreBottomSheet(context),
                child: Image.asset(
                  'assets/more.png',
                  // fit: BoxFit.cover,
                  cacheHeight: 50,
                  cacheWidth: 50,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("More")
          ],
        ),
      ],
    );
  }
}
