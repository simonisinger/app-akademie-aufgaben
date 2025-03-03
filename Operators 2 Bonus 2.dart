void main() {
  List<Map<String,dynamic>> testVariants = [
    {
      'totalAmount': 150.0,
      'isStudent': true,
      'hasVoucher': false,
      'isLoyalCustomer': false,
    },
    {
      'totalAmount': 250.0,
      'isStudent': false,
      'hasVoucher': true,
      'isLoyalCustomer': true,
    },
  ];

  for (Map<String, dynamic> testVariant in testVariants) {
    double totalAmount = testVariant['totalAmount'];
    int discount = 0;
    if (testVariant['hasVoucher']) {
      discount = 15;
    } else if (testVariant['isLoyalCustomer']) {
      discount = 10;
    } else if (testVariant['isStudent']) {
      discount = 5;
    }

    if (totalAmount > 200) {
      discount += 5;
    }
    double finalPrice = totalAmount * (1 - (discount / 100));
    print(discount > 15 ? 'Super Spar-Deal!' : discount > 0 ? 'Normaler Rabatt' : 'Standardpreis');
  }
}