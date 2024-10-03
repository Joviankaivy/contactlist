import '../models/contact.dart';

// menyimpan daftar kontak
class AppState {
  final List<Contact> contacts;

  AppState({required this.contacts});

  // Metode untuk menyalin state dengan nilai baru
  AppState copyWith({List<Contact>? contacts}) {
    return AppState(
      contacts: contacts ?? this.contacts,
    );
  }
}
