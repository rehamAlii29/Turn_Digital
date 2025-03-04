import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_base/src/Core/Services/NetWorkManger/network_manger.dart';
import 'package:flutter_base/src/Core/Utils/general_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ShareEventHandler {
  static shareEvent(
      String eventName, String eventLocation, String imageUrl) async {
    try {
      final directory = await getTemporaryDirectory();
      final String imagePath = '${directory.path}/shared_image.png';

      File imageFile = File(imagePath);
      bool imageExists = imageFile.existsSync();
      bool isConnected = await NetworkManager.isConnected();

      if (!imageExists && isConnected) {
        printDM('Downloading image...');
        try {
          await Dio().download(imageUrl, imagePath);
          imageExists = File(imagePath).existsSync();
        } catch (e) {
          printDM('Error downloading image: $e');
          imageExists = false;
        }
      }

      if (imageExists) {
        await Share.shareXFiles(
          [XFile(imagePath)],
          text: 'Check out this event: $eventName at $eventLocation',
        );
      } else {
        printDM('Image download failed. Sharing text only.');
        await Share.share(
            'Check out this event: $eventName at $eventLocation\n$imageUrl');
      }
    } catch (e) {
      printDM('Error sharing event: $e');
    }
  }
}
