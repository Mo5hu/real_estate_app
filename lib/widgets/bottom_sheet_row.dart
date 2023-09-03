import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/constants/constants.dart';

class BottomSheetRow extends StatelessWidget {
  final List<String> imageUrls;
  final String price;
  final String description;
  final String address;
  final String bed;
  final String bath;
  final String dimension;
  final String reference;

  const BottomSheetRow({
    super.key,
    required this.imageUrls,
    required this.price,
    required this.description,
    required this.address,
    required this.bed,
    required this.bath,
    required this.dimension,
    required this.reference,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 420,
      child: Row(children: [
        SizedBox(
          width: 130,
          height: 130,
          child: PageView.builder(
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      height: 130,
                      width: 130,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        print('Error loading image: $exception');

                        return Image.asset(
                          'assets/Placeholder.png',
                          fit: BoxFit.cover,
                          height: 130,
                          width: 130,
                        );
                      },
                    )),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/Vectorbookmark.svg',
                      width: iconSize,
                      height: iconSize,
                    ),
                  ),
                ),
              ]);
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: 'BD ',
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                          text: price,
                          style: Theme.of(context).textTheme.labelLarge),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/bed.svg',
                            width: iconSizeSmall,
                            height: iconSizeSmall,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(bed)
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/bath.svg',
                            width: iconSizeSmall,
                            height: iconSizeSmall,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(bath)
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/dimension.svg',
                            width: iconSizeSmall,
                            height: iconSizeSmall,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(dimension)
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/Iconhash.svg',
                            width: iconSizeSmall,
                            height: iconSizeSmall,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text('Ref $reference')
                        ],
                      ),
                    ],
                  ),
                ),
                Text(description),
                Text(address),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
