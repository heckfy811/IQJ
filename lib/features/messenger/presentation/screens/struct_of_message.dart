
import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

// class Message extends StatelessWidget {
//   final String text;
//   final bool who;

//   const Message({required this.text, required this.who});

//   @override
//   Widget build(BuildContext context) {
//     final Color backgroundColor = who ? Colors.grey : Color.fromRGBO(158, 148, 2, 0.965);
//     final AlignmentGeometry alignment = who ? Alignment.centerRight : Alignment.centerLeft;

//     return Container(
//       margin: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
//       padding: EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
//       alignment: alignment,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: backgroundColor,
//       ),
//       child: Text(text),
//     );
//   }

class ReceiverMessage extends StatelessWidget {
  final String url;
  final String message;
  final String receiver;
  final String compare;
  final String time;

  const ReceiverMessage({
    Key? key,
    required this.url,
    required this.message,
    required this.receiver,
    required this.compare,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (receiver != compare) _buildThumbnailImage(url),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: receiver != compare
                      ? Theme.of(context).colorScheme.onInverseSurface
                      : Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(receiver != compare ? 4 : 12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                position: DecorationPosition.background,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 4),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              time,
                              style: TextStyle(fontSize: 10),
                            ),
                            if (receiver != compare)
                              SvgPicture.asset(
                                'assets/icons/chat/send_mes.svg',
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}


Widget _buildThumbnailImage(String image_url) {
    try {
      return Container(
        padding: EdgeInsets.only(right: 7),
        child: SizedBox(
          width: 33,
          height: 33,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.network(
              image_url,
              fit: BoxFit.fill,
              height: 200,
              errorBuilder: (
                BuildContext context,
                Object exception,
                StackTrace? stackTrace,
              ) {
                return CircleAvatar(
                  radius: 6,
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  child: const Text('A'),
                );
              },
            ),
          ),
        ),
      );
    } catch (e) {
      return Container();
    }
  }
