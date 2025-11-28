class TransactionModel {
  final String id;
  final double amount;
  final String date;
  final String description;

  TransactionModel({required this.id, required this.amount, required this.date, required this.description});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      amount: json['amount'].toDouble(),
      date: json['date'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'date': date,
      'description': description,
    };
  }
}