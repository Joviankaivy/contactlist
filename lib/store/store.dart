import 'package:redux/redux.dart';

// Model for the application state
class AppState {
  final List<String> contacts; // Assuming contacts are strings for simplicity

  AppState({required this.contacts});
}

// Reducer function
AppState contactsReducer(AppState state, dynamic action) {
  // Handle actions to modify the state
  // For example, you can add a new contact or remove one.
  switch (action['type']) {
    case 'ADD_CONTACT':
      return AppState(contacts: List.from(state.contacts)..add(action['contact']));
    case 'REMOVE_CONTACT':
      return AppState(contacts: List.from(state.contacts)..remove(action['contact']));
    default:
      return state; // Return the current state for unknown actions
  }
}

// Initialize the store
final store = Store<AppState>(
  contactsReducer, // Reducer used
  initialState: AppState(contacts: []), // Initial state
);
