import 'package:demo_client/demo_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier, AppUser>(
  (ref) => UserStateNotifier(),
);

class UserStateNotifier extends StateNotifier<AppUser> {
  UserStateNotifier()
      : super(AppUser(name: '', phone: '', email: '', password: ''));

  set user(AppUser appUser) {
    state = appUser;
  }

  AppUser get user => state;
}
