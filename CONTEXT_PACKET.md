\# CONTEXT\_PACKET



\## 목표

StudyGoal 항목을 탭하면 완료/취소가 전환되고, 상단 "완료 N / 남은 M" 개수가 함께 갱신된다.



\## 현재 코드

\- 파일: lib\\main.dart

\- 화면: HomeScreen / 상태 소유자: \_HomeScreenState

\- 원본 상태: goals (List<StudyGoal>, 필드 title, isDone)

\- 계산값: completedCount, remainingCount (getter)

\- 이벤트: \_toggleGoal(index) → setState 안에서 isDone 반전



\## 근거

\- STATE\_CONTRACT.md: 원본 상태·계산값·이벤트 정의

\- STATE\_FLOW.md: 이벤트→상태→UI 흐름

\- CONTEXT\_MAP.md: 파일·화면·상태·데이터 연결

\- evidence\\01\_initial.png, 02\_changed.png, 03\_restored.png: 실행 화면



\## 제약

\- 외부 상태관리 패키지, 서버, 비동기 기능을 쓰지 않는다.

\- setState 기반으로 구현한다.

\- 계산 가능한 값(완료 개수, 남은 개수)을 별도 변수로 저장하지 않는다.

\- 수정 대상 파일은 lib\\main.dart 하나다.



\## 인수 조건

\- AC1: 초기값(완료 1 / 남은 2)과 첫 화면이 일치한다.

\- AC2: 항목을 한 번 탭하면 상태와 화면이 함께 바뀐다.

\- AC3: 같은 항목을 다시 탭하면 값과 화면이 함께 원복된다.

\- AC4: 계산 가능한 표시값을 별도 원본으로 중복 저장하지 않는다.



\## 검증

\- flutter analyze: No issues found

\- 화면 증거: evidence 폴더의 PNG 3장 (초기·변경·원복)

