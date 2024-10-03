class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});

  @override
  String toString() => 'Contact(name: $name, phoneNumber: $phoneNumber)';
}
