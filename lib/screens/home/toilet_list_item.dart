// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
/*
import 'package:flutter/material.dart';
import 'package:public_toilets/model/toilet.dart';

class ToiletListItem extends StatelessWidget {
  final Toilet toilet;

  const ToiletListItem({
    super.key,
    required this.toilet,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(Icons.home, size: 30.0),
            Expanded(
              child: Text(
                toilet.name,
                style: TextStyle(fontSize: 24.0, color: Colors.red),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    // collection if, ไม่ใช่ if statement
                    if (toilet.point > 2.5)
                      Text('GOOD'),

                    // collection for, ไม่ใช่ for statement
                    for (var i = 0; i < toilet.point.floor(); i++)
                      Icon(Icons.star),

                    Text(toilet.point.toString())
                  ],
                ),
                Text(toilet.distance.toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:public_toilets/model/toilet.dart';


class ToiletListItem extends StatelessWidget {
  static const iconSize = 18.0;

  final Toilet toilet;

  const ToiletListItem({
    super.key,
    required this.toilet,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    var hasRating = toilet.averageRating > 0; // rating มากกว่า 0 แสดงว่ามี rating
    var numWholeStar = toilet.averageRating.truncate();
    var fraction = toilet.averageRating - numWholeStar;
    var showHalfStar = fraction >= 0.5;
    var numBlankStar = 5 - numWholeStar - (showHalfStar ? 1 : 0);

    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                  width: 60.0,
                  height: 60.0,
                  color: colorScheme.background,
                  child: Center(child: Icon(Icons.home, size: 30.0))),
              SizedBox(width: 8.0),
              Expanded(child: Text(toilet.name, style: textTheme.titleLarge)),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                hasRating // เปน true จะสร้าง row star
                    ? Row(children: [
                  for (var i = 0; i < numWholeStar; i++)
                    Icon(Icons.star, size: iconSize),
                  if (showHalfStar) Icon(Icons.star_half, size: iconSize), // .5 ขึ้นไป แสดงดาวครึ่งดวง
                  for (var i = 0; i < numBlankStar; i++)
                    Icon(Icons.star_border, size: iconSize),
                  //Text(toilet.averageRating.toStringAsFixed(1))
                ])
                    : Text('ยังไม่มีคะแนน'), // false
                Text('${toilet.distance.toString()} เมตร',
                    style: textTheme.bodyLarge)
              ])
            ])));
  }
}
