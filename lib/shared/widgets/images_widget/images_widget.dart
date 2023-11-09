import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:qac/shared/components/constants/style/color.dart';

import '../../../res/assets_res.dart';

class ImagesWidget extends StatelessWidget {
  final String imgUrl;
  final Color? color;

  const ImagesWidget({
    Key? key,
    required this.imgUrl,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 4,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                onTap: () {
                  showImageViewer(
                      context,
                      Image.network(
                        imgUrl,
                      ).image,
                      swipeDismissible: true,
                      doubleTapZoomable: true);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: color ?? AppColor.globalColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(11),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: FadeInImage.assetNetwork(
                      placeholder: AssetsRes.LOADINGBOOK,
                      image: imgUrl,
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      imageErrorBuilder: (context, error, stackTrace) => Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const SizedBox(
                          height: 250,
                          width: double.infinity,
                          child: Icon(Icons.broken_image_outlined),
                        ),
                      ),
                    ),
                    // Image.network(
                    //   imgUrl,
                    //   height: 250,
                    //   width: MediaQuery.of(context).size.width,
                    //   fit: BoxFit.fill,
                    //   // if the image is null
                    //   errorBuilder: (BuildContext context, Object exception,
                    //       StackTrace? stackTrace) {
                    //     return Card(
                    //       elevation: 0,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10)),
                    //       child: const SizedBox(
                    //         height: 250,
                    //         width: double.infinity,
                    //         child: Icon(Icons.broken_image_outlined),
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
