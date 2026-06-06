# 표준 디자인 지령 (관제탑 발령) — 모든 레포 공통

> 발령: mission-control / 적용: 디자인·프런트엔드가 들어가는 **모든 세션**(kfortunes, kstarmatch, 향후 신규).
> 원칙: "디자인은 supanova로 깔고, 정보구조·카피·수익화 밀도는 각 레포 브리프로." 손으로 generic하게 짜지 말 것.

## 표준 절차 (디자인 작업 시 항상)

### 1단계 — 스킬 설치 (레포에 1회)
해당 레포 루트에서:
```bash
git clone --depth 1 https://github.com/uxjoseph/supanova-design-skill /tmp/supanova
mkdir -p .claude/skills
for d in taste-skill redesign-skill output-skill soft-skill; do
  cp -r "/tmp/supanova/$d" ".claude/skills/$d"
done
git add .claude/skills && git commit -m "skills: add supanova design skills"
```
설치 후 세션 새로고침 → Skill 목록에 `supanova-design-engine`, `supanova-redesign-engine` 등 노출.

### 2단계 — 작업 종류별 스킬 선택
| 상황 | 호출 스킬 |
|---|---|
| **기존 페이지 개선**(못생김/thin 진단→수정) | `supanova-redesign-engine` |
| **새 페이지 처음부터**(랜딩·에버그린) | `supanova-design-engine` |
| 출력 잘림 방지(전체 HTML 보장) | `output` |
| 미감 기준 점검 | `soft` |

### 3단계 — 레포별 기준 덮어쓰기
supanova는 *랜딩/전환* 최적화 엔진. 그 위에 각 레포 고유 기준을 입힌다:
- **kfortunes** → `ops/kfortunes-design.md` (다크 사주톤, 결과 8섹션 롱폼, 공유카드, AdSense 밀도)
- **kstarmatch** → 해당 레포 디자인 노트(없으면 생성)
- 공통 수익화 규칙: 결제 영구제외 · 정적 먼저 · AdSense 통과(콘텐츠 충실도·필수 정적페이지) · 모바일 우선.

## supanova 핵심 룰 (요약 — 어기지 말 것)
- 폰트: 한글 **Pretendard** 필수 / 영문 디스플레이는 Geist·Outfit 등. **금지: Inter·Noto Sans KR·Roboto.**
- 레이아웃: 인접 섹션은 **서로 다른 패턴**(스플릿/벤토/비대칭). 같은 카드 쌓기 금지.
- 색: 액센트 **1개**(채도<80%). **보라/파랑 AI 그라데이션 금지.** 딥 뉴트럴 베이스.
- 모션: **transform·opacity만** 애니메이트(하드웨어 가속). 위치속성 금지.
- CTA: hover/active/focus 상태 + 최소 사이즈. 신뢰요소(로고·후기·지표) 필수.
- 카피: **자연스러운 한국어**(번역체·"혁신적인" 류 금지), 경어 `합니다` 일관.

## 한 줄 명령 (세션에 던질 때)
> "이 레포에 supanova 스킬 설치하고(`ops/design-directive.md` 1단계), [개선이면 redesign / 신규면 design] 엔진으로 [대상] 디자인해. 기준은 [레포 디자인 노트] 따르고 결제·백엔드 없이 정적으로."
