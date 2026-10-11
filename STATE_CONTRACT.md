# STATE_CONTRACT

## 기능
StudyGoal 완료·취소 토글 + 완료 개수 표시

## 원본 상태
- 소유자: `_HomeScreenState`
- 변수: `List<StudyGoal> goals`
- StudyGoal 필드: `String title`, `bool isDone`
- 초기값: ["Flutter 위젯 복습", false], ["Git 커밋 연습", false], ["과제 문서 작성", true]

## 계산값 (저장하지 않음)
- `completedCount` = `goals.where((g) => g.isDone).length`
- `remainingCount` = `goals.length - completedCount`

## 이벤트
- 입력: 목표 항목 탭
- 메서드: `_toggleGoal(index)`
- 상태 변화: `goals[index].isDone`을 반전 (false→true는 완료, true→false는 취소)

## UI 반응
- 체크 아이콘 변경, 제목 취소선 표시/해제
- 상단 "완료 N / 남은 M" 텍스트 갱신