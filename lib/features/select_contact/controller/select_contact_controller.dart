import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/select_contact/repository/select_contact_repository.dart';

final getContactsProvider = FutureProvider((ref) {
  final selectContactRep = ref.watch(selectContactRepositoryProvider);
  return selectContactRep.getContacts();
});
