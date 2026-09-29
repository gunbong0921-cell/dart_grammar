void main() {
  print('\n Flutter UI : if');
  /**
  collection if : 로그인 상태, 관리자 권한 등 특정 위젯을 리스트에 포함할지 여부를 삼항연산자 없이 깔끔하게 한줄로
  작성할 수 있다.
   */
  bool isLoggedIn = true;
  bool hasAlarm = false;
  // 리스 내부에 if문을 작성하여 특정 조건일때만 요소를 포함시킴
  List<String> navigationItems = [
    '홈 화면',
    '검색',
    if (isLoggedIn) '마이페이지',
    if (hasAlarm) '알림 센터',
    '설정',
  ];
  print('네비게이션 메뉴 목록: $navigationItems');

  print('\n Flutter UI : for');
  /**
  collection for : 데이터 목록을 받아서 반복되는 위젯 목록으로 즉시 변환할 수 있다. 
   */
  List<String> categoryNames = ['인기글', '공지사항', 'Q&A'];
  // 리스트 내부에 확장 for문 형식으로 사용
  List<String> tabs = [
    '전체보기',
    for (String category in categoryNames) '탭 : $category',
  ];
  print('생성된 탭 목록: $tabs');
  print('\n Flutter UI : Spread 연산자 (...) / (...?)');
  List<String> defaultButtons = ['취소', '임시저장'];
  List<String> adminButtons = ['삭제', '관리자 승인'];
  List<String> finalActionSheet = [
    '공통 상단 바',
    ...defaultButtons,
    ...adminButtons,
    '완료',
  ];
  print('스프레드 결과1: $finalActionSheet');
  List<String>? extraFeatures; // 현재 null
  List<String> availableFeatures = ['기본 기능A', '기본 기능B', ...?extraFeatures]; // 만약 null이어도 에러 없이 패스
  print('스프레드 결과2: $availableFeatures');
}
