# Mission Control — 셋업 가이드

Claude Code에서 아래 순서대로 하나씩 따라 하세요.

## STEP 1 — 새 레포 만들기 (GitHub)
GitHub에서 `mission-control` 이름으로 **빈 private 레포** 생성.
(README 체크 해제하고 완전히 빈 걸로.)

## STEP 2 — 이 키트를 로컬에 풀고 레포로 만들기
다운로드한 mission-control 폴더 안에서:
```
git init
git add .
git commit -m "init: mission control orchestrator"
git branch -M main
git remote add origin https://github.com/JungyulPark/mission-control.git
git push -u origin main
```

## STEP 3 — 기존 레포를 submodule로 연결
```
bash setup.sh
git add .
git commit -m "add submodules: kfortunes, InsuranceJob, automarketer"
git push
```
(처음엔 setup.sh의 "최소형 시작 세트" 3개만. 나머지는 나중에 주석 해제.)

## STEP 4 — Claude Code를 이 폴더에서 열기
```
cd mission-control
claude
```
그리고 첫 메시지로 아래 부트스트랩 프롬프트를 붙여넣으세요:

---
**[부트스트랩 프롬프트]**

너는 CLAUDE.md에 정의된 내 종합 마스터(관제탑)다.
지금 ops/STATE.md, ops/ROADMAP.md, ops/channels.md를 모두 읽어라.
읽고 나서 CLAUDE.md의 "매 세션 시작 시" 절차대로 3줄 브리핑을 해라.
단, 아직 각 submodule 내부는 보지 마라. 먼저 전체 그림과 다음 한 가지만 정하자.
---

## STEP 5 — 이후 일상 사용법
세션 열 때마다 그냥 "오늘 브리핑해줘" 하면 관제탑이 STATE를 읽고
다음 할 일 하나를 정해준다. 작업 끝나면 "STATE 갱신하고 커밋 메시지 줘" 하면 된다.

## 주의
- submodule 안에서 작업하면 그 레포로 push된다(각자 자기 GitHub로).
- 상위 mission-control은 "어느 시점의 submodule을 가리키는지"만 기록한다.
- 관제탑을 과하게 키우지 말 것. STATE.md 갱신만 꾸준히 하면 충분하다.
