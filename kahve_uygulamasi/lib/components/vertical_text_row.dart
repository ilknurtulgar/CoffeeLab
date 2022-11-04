import 'package:flutter/material.dart';

class VerticalTextRow extends StatelessWidget {
  const VerticalTextRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: RotatedBox(quarterTurns: 3, child: Text('içerik',style: TextStyle(fontSize: 16),)),
        ),
        Row(
          children: [
            RotatedBox(quarterTurns: 3, child: Text('olsun',style: TextStyle(fontSize: 16),)),
            const SizedBox(
              width: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 19.0),
              child: RotatedBox(quarterTurns: 3, child: Text('olmasın',style: TextStyle(fontSize: 16),)),
            ),
          ],
        ),
      ],
    );
  }
}
