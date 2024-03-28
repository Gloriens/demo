<<<<<<< Updated upstream
=======
// import 'dart:ffi';

import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/main_menu.dart';
import 'package:demo_flutter/services/service.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:demo_flutter/LoginScreen.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        child: Container(
          width: 260,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SignInWithEmailButton(
                caller: client.modules.auth,
              ),
<<<<<<< Updated upstream
=======
              ElevatedButton(
                onPressed: () async {
                  //FILE UPLOAD FOR RECORD DO NOT USE IT NOW !!!!!!.
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    final ext = image.path.split(".").last;
                    final path =
                        "avatars/${ref.read(serviceProvider).generateRandomString(12)}.$ext";
                    final url = await ref
                        .read(serviceProvider)
                        .uploadImage(image, path);
                    RecordImage recordImage = RecordImage(
                      recordId: 0,
                      imageURL: path,
                    );
                    if (url != null) {
                      // Yükleme başarılıysa resmi gösterme işlemi
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Image Uploaded'),
                              content:
                                  Image.network(url, width: 32, height: 32),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Close'),
                                ),
                              ],
                            );
                          });
                    }
                  }
                },
                child: const Text('Upload Image'),
              ),
>>>>>>> Stashed changes
            ],
          ),
        ),
      ),
    );
  }
}
