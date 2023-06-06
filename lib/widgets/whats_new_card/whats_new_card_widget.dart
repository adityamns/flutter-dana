import 'package:dana_clone/utils/assets_locations.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/whats_new_card/tile_whats_new.dart';
import 'package:flutter/material.dart';

class WhatsNewCardWidget extends StatelessWidget {
  const WhatsNewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What's New",
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      "The best new of the week!",
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image(
                        image: AssetsLocation.iconLocation('promos'),
                        width: 20,
                      ),
                      const Text('VIEW PROMOSE'),
                    ],
                  ),
                )
              ],
            ),
          ),
          const TileWhatsNew(
            iconName: 'handphone',
            headLine: "Pakai dana di thailand",
            textBody: "Belanja praktis dan aman",
          ),
          const TileWhatsNew(
            iconName: 'nabung_emas',
            headLine: "Nabung eMAS di DANA",
            textBody: "Mulai Rp.3.000 setiap hari!",
          ),
          const TileWhatsNew(
            iconName: 'kirim_uang',
            headLine: "Kirim Uang Berhadiah",
            textBody: "Cek caranya yuk!",
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('VIEW ALL NEWS'),
          ),
        ],
      ),
    );
  }
}
