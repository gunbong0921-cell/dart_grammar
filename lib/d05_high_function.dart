class CartItem {
  final String name;
  final int price;
  final bool isSelected;

  const CartItem({
    required this.name,
    required this.price,
    this.isSelected = true,
  });

  @override
  String toString() => '$name(선택: $isSelected)';
}

void main() {
  final List<CartItem> cart = [
    const CartItem(name: '아이폰', price: 1000, isSelected: true),
    const CartItem(name: '갤럭시', price: 2000, isSelected: false),
    const CartItem(name: '샤오미', price: 3000, isSelected: true),
  ];
  print('1.map()');
  
}