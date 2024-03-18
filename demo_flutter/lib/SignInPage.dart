import 'dart:ffi';

import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/main_menu.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                onSignedIn: () {
                  // DIDN'T TEST THIS YET.
                  var newAuthUser = sessionManager.signedInUser;
                  if (newAuthUser != null) {
                    bool isExits = ref
                        .read(serviceProvider)
                        .checkIfAuthUserExits(newAuthUser.id ?? 0);
                    if (isExits) {
                      //user assigned and logged in.
                      // navigate to the next page.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenu()),
                      );
                    } else {
                      // create new app_user
                      AppUser appUser = AppUser(
                          userInfoId: newAuthUser.id ?? 0,
                          name: newAuthUser.userName,
                          email: newAuthUser.email ?? "",
                          password: "",
                          phone: "");
                      ref.read(serviceProvider).createNewUser(appUser, context);
                    }
                  }
                  // create app_user based on authanticated user id.
                  // turn this widget into a consumer widget. DONE !!!
                  // call service and create the new app_user.
                  // move on to the next page.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
