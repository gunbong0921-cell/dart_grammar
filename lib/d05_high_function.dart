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
  List<String> productNames = cart.map(
    (item) => item.name).toList();
  print('상품목록(전체): $productNames');

  List<String> display = cart.map((item) {
    return '[${item.isSelected ? '선택됨' : '선택안됨'}] ${item.name}';
  }).toList();
  print('상품목록(선택) :');
  for (var dis in display) {
    print(' - $dis');
  }

  print('\n2.where()');
  List<CartItem> selectedItems = cart.where((item) => item.isSelected).toList();
  print('체크된 상품들: $selectedItems');

  print('\n3.fold()');
  int totalOrderPrice = selectedItems.fold(0, (sum, item) => sum + item.price);
  print('총 금액: $totalOrderPrice원');

  print('\n4.any() 와 every()');
  bool hasExpensiveItem = cart.any((item) => item.price > 2000);
  print('2000원 이상의 상품이 하나라도 있는가? $hasExpensiveItem');

  bool isAllExpensive = cart.every((item) => item.isSelected);
  print('모든 상품이 체크되어 있는가? $isAllExpensive');
}
