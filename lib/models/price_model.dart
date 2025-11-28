class CryptoPriceModel {
  final String name;
  final String symbol;
  final double currentPrice;
  final double marketCap;
  final double priceChange24h;

  CryptoPriceModel({
    required this.name,
    required this.symbol,
    required this.currentPrice,
    required this.marketCap,
    required this.priceChange24h,
  });

  factory CryptoPriceModel.fromJson(Map<String, dynamic> json) {
    return CryptoPriceModel(
      name: json['name'],
      symbol: json['symbol'],
      currentPrice: json['current_price'].toDouble(),
      marketCap: json['market_cap'].toDouble(),
      priceChange24h: json['price_change_24h'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'symbol': symbol,
      'current_price': currentPrice,
      'market_cap': marketCap,
      'price_change_24h': priceChange24h,
    };
  }
}