import 'package:CartoonZa/Config/Colors.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  const NormalButton({super.key, required this.btnName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 55,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(width: 10),
            Text(
              btnName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.background,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
