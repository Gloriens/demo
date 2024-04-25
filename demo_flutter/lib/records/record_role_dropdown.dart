import 'package:demo_client/demo_client.dart';
import 'package:demo_flutter/services/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordRoleDropDown extends ConsumerStatefulWidget {
  const RecordRoleDropDown(
      {super.key, required this.roleName, required this.roleId});
  final String roleName;
  final int roleId;
  @override
  ConsumerState<RecordRoleDropDown> createState() => _RecordRoleDropDownState();
}

List<String> usersName = ["user1"];
List<AppUser> users = [];
late AppUser user;
String dropdownValue = usersName.first;

class _RecordRoleDropDownState extends ConsumerState<RecordRoleDropDown> {
  @override
  Widget build(BuildContext context) {
    final listOfUsers = ref.watch(listOfUsersProvider);
    listOfUsers.when(
        data: (data) {
          usersName = ref.read(serviceProvider).getListOfUsersName(data);
          users = data;
        },
        error: ((error, stackTrace) => Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()));
    return Row(
      children: [
        Text(widget.roleName,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownMenu(
              initialSelection: usersName.first,
              onSelected: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
                ref
                    .read(recordRoleProvider.notifier)
                    .add(widget.roleId, value!);
              },
              dropdownMenuEntries:
                  usersName.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList()),
        ),
      ],
    );
  }
}

final recordRoleProvider =
    StateNotifierProvider<RecordRoleNotifier, Map<int, String>>(
        (ref) => RecordRoleNotifier());

class RecordRoleNotifier extends StateNotifier<Map<int, String>> {
  RecordRoleNotifier() : super({});

  void add(int roleId, String value) {
    Map<int, String> newRecordRole = {roleId: value};
    state = {...state, ...newRecordRole};
  }
}
