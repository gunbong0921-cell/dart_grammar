void main() {
  print('기본 컬렉션 (List, Set, Map)');
  // 1) List
  List<String> fruits = ['사과', '바나나', '사과'];
  fruits.add('딸기');
  print('List (목록) : $fruits');
  print('첫 번째 과일 : ${fruits[0]}, 총 개수: ${fruits.length}');

  // 2) Set
  Set<String> tags = {'Flutter', 'Dart', 'Flutter', 'Mobile'};
  print('Set (중복 제거) : $tags');
  print('Dart 태그 포함 여부: ${tags.contains('Dart')}');

  // 3) Map
  Map<String, dynamic> userInfo = {
    'id': 101,
    'nickname': '플로터초보',
    'grade': 'GOLD',
  };
  print('Map (JSON 구조) : $userInfo');
  print('사용자 닉네임: ${userInfo['nickname']}');
  print('이메일: ${userInfo['email'] ?? '등록된 이메일 없음'}');

  // 4) 축약형
  var vFruits = <String>['사과', '바나나'];
  var vTags = <String>{'Flutter', 'Dart'};
  var vUserInfo = <String, dynamic>{
    'id': 101,
    'nickname': '플로터초보',
  };
}
