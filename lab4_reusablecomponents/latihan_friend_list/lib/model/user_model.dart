class Contact {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;

  Contact({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
  });
}

List<Contact> dummyContacts = [
  Contact(
    name: "Hajeera",
    lastMessage: "Im good. I am going to market.",
    time: "5.30 AM",
    avatarUrl: "https://i.pravatar.cc/150?img=1",
  ),
  Contact(
    name: "Riya",
    lastMessage: "Im busy. Talk later ok!",
    time: "Yesterday",
    avatarUrl: "https://i.pravatar.cc/150?img=2",
  ),
  Contact(
    name: "Nakul",
    lastMessage: "Im good",
    time: "Monday",
    avatarUrl: "https://i.pravatar.cc/150?img=3",
  ),
  Contact(
    name: "Khan",
    lastMessage: "I will call you later",
    time: "Sunday",
    avatarUrl: "https://i.pravatar.cc/150?img=4",
  ),
];