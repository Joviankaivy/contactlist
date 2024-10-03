import '../models/contact.dart';

// untuk menambahkan kontak baru
class AddContactAction {
  final Contact contact;

  AddContactAction(this.contact);
}

// untuk menghapus kontak berdasarkan indeks
class RemoveContactAction {
  final int index;

  RemoveContactAction(this.index);
}
