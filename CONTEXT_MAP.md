\# CONTEXT\_MAP



\## 기능

StudyGoal 완료·취소 토글 + 완료 개수 표시



\## 연결 지도

| 구분 | 이름 | 위치 | 역할 |

|---|---|---|---|

| 파일 | main.dart | lib\\main.dart | 앱 전체 코드 |

| 화면 | HomeScreen | lib\\main.dart | 목표 목록과 개수 표시 |

| 상태 소유자 | \_HomeScreenState | lib\\main.dart | goals 소유, \_toggleGoal 실행 |

| 원본 상태 | goals | \_HomeScreenState | List<StudyGoal> |

| 데이터 | StudyGoal | lib\\main.dart | title, isDone |

| 계산값 | completedCount, remainingCount | \_HomeScreenState | goals에서 getter로 계산 |

| 이벤트 | \_toggleGoal(index) | \_HomeScreenState | isDone 반전 |

| 문서 | STATE\_CONTRACT.md | 루트 | 상태 계약 |

| 문서 | STATE\_FLOW.md | 루트 | 이벤트→상태→UI 흐름도 |

| 증거 | 01\_initial.png, 02\_changed.png, 03\_restored.png | evidence\\ | AC1\~AC3 화면 |



\## 수정 시 먼저 읽을 것

\- 상태 로직 수정: STATE\_CONTRACT.md → lib\\main.dart의 \_HomeScreenState

\- 화면 수정: lib\\main.dart의 build 메서드

