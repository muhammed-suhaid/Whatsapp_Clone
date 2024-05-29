import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';
import 'package:whatsapp_clone/common/widgets/loader.dart';
import 'package:whatsapp_clone/features/select_contact/controller/select_contact_controller.dart';

class SelectContactGroup extends ConsumerStatefulWidget {
  const SelectContactGroup({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectContactGroupState();
}

class _SelectContactGroupState extends ConsumerState<SelectContactGroup> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(getContactsProvider).when(
          data: (contactList) => Expanded(
            child: ListView.builder(
              itemCount: contactList.length,
              itemBuilder: (context, index) {
                final contact = contactList[index];
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(
                        contact.displayName,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          error: (err, trace) => ErrorScreen(
            error: err.toString(),
          ),
          loading: () => const LoadingScreen(),
        );
  }
}
