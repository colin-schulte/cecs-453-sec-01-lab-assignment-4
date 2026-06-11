import 'dart:math';

class Mortgage {
  double amount;
  int years;
  double rate;

  Mortgage({this.amount = 100000, this.years = 30, this.rate = 0.035});

  double monthlyPayment() {
    double mRate = rate / 12;

    double temp = pow(1 / (1 + mRate), years * 12).toDouble();

    return amount * mRate / (1 - temp);
  }

  double totalPayment() {
    return monthlyPayment() * years * 12;
  }
}
