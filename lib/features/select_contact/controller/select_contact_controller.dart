import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/select_contact/repository/select_contact_repository.dart';

final getContactsProvider = FutureProvider((ref) {
  final selectContactRep = ref.watch(selectContactRepositoryProvider);
  return selectContactRep.getContacts();
});

final selectContactControllerProvider = Provider((ref) {
  final selectContactRepository = ref.watch(selectContactRepositoryProvider);
  return SelectContactController(
    ref: ref,
    selectContactRrepository: selectContactRepository,
  );
});

class SelectContactController {
  final ProviderRef ref;
  final SelectContactRrepository selectContactRrepository;

  SelectContactController({
    required this.ref,
    required this.selectContactRrepository,
  });

  void selectContact(Contact selectedContact, BuildContext context) {
    selectContactRrepository.selectContact(selectedContact, context);
  }
}
