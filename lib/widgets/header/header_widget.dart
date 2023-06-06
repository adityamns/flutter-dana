import 'package:dana_clone/widgets/header/icon_subtittle_header.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconSubtittleHeader(
            iconName: 'scan',
            iconSubtittle: 'Scan',
          ),
          IconSubtittleHeader(
            iconName: 'top_up',
            iconSubtittle: 'Top Up',
          ),
          IconSubtittleHeader(
            iconName: 'send',
            iconSubtittle: 'send',
          ),
          IconSubtittleHeader(
            iconName: 'request',
            iconSubtittle: 'Request',
          ),
        ],
      ),
    );
  }
}
