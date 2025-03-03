void main() {
  List<Map<String,dynamic>> testVariants = [
    {
      'age': 15,
      'hasParentalConsent': true,
      'movieAgeRating': 16
    },
    {
      'age': 13,
      'hasParentalConsent': false,
      'movieAgeRating': 16
    },
  ];

  for (Map<String, dynamic> testVariant in testVariants) {
    if (testVariant['age'] >= testVariant['movieAgeRating'] || testVariant['hasParentalConsent'] && testVariant['age'] >= (testVariant['movieAgeRating'] - 2)) {
      print('er darf den film sehen');
    } else {
      print('er darf den film nicht sehen');
    }
  }
}