void main() {
  reverseInitials('Johnny', 'Depp');
  reverseInitials('Conan', 'Edogawa');
  reverseInitials('Kaito', 'Kid');
  reverseInitials('Lorenor', 'Zorro');
}

void reverseInitials(String firstName, String lastName) {
  firstName = firstName.trim();
  lastName = lastName.trim();
  print("${firstName[firstName.length - 1].toUpperCase()}. ${lastName[lastName.length - 1].toUpperCase()}.");
}