import '../models/app_state.dart';
import '../actions/actions.dart';

AppState contactsReducer(AppState state, dynamic action) {
  if (action is AddContactAction) {
    // Menambahkan kontak baru
    return state.copyWith(
      contacts: List.from(state.contacts)..add(action.contact),
    );
  } else if (action is RemoveContactAction) {
    // Menghapus kontak berdasarkan index
    if (action.index >= 0 && action.index < state.contacts.length) {
      return state.copyWith(
        contacts: List.from(state.contacts)..removeAt(action.index),
      );
    }
  }
  return state;
}
