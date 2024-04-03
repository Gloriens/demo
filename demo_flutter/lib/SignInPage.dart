import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/main_menu.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:demo_flutter/LoginScreen.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                onSignedIn: () async {
                  // THERE IS A PROBLEM WITH ASYNC GAP.
                  var newAuthUser = sessionManager.signedInUser;
                  if (newAuthUser != null) {
                    bool isExits = await ref
                        .read(serviceProvider)
                        .checkIfAuthUserExits(newAuthUser.id ?? 0);
                    if (isExits) {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenu()),
                      );
                    } else {
                      AppUser appUser = AppUser(
                          userInfoId: newAuthUser.id ?? 0,
                          name: newAuthUser.userName,
                          email: newAuthUser.email ?? "",
                          password: "",
                          phone: "");
                      if (!context.mounted) {
                        return;
                      }
                      ref.read(serviceProvider).createNewUser(appUser, context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenu()),
                      );
                    }
                  }
                },
              ),
              /*ElevatedButton(
                onPressed: () async {
                  //FILE UPLOAD FOR RECORD DO NOT USE IT NOW !!!!!!.
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    final ext = image.path.split(".").last;
                    final path =
                        "avatars/${ref.read(serviceProvider).generateRandomString(12)}.$ext";
                    ref.read(serviceProvider).uploadImage(image, path);
                    RecordImage recordImage = RecordImage(
                      recordId: 0,
                      imageURL: path,
                    );
                  }
                },
                child: const Text('Upload Image'),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
