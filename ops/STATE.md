# STATE — 전체 프로젝트 현황판

> 이 파일은 관제탑의 "기억"이다. 작업할 때마다 갱신한다.
> 상태 표기: 🟢완성근접 / 🟡진행중 / 🔵아이디어 / ⚪보류 / ❌접기후보
> 마지막 갱신: 2026-06-06 (kfortunes AdSense 진단 완료 → 재신청 전략 확정)

---

## 트랙 1 — 수익화 (광고형 웹앱 후보) ★현금 엔진
이 트랙이 회사의 핵심. "데일리 재방문 + 광고 슬롯 + 어필리에이트" 템플릿으로 통일.

> ✅ **분가 완료(6/6): kstarmatch → 별도 레포로 분리**(브랜치 claude/bold-rubin-VmcdW, 커밋 e8530b3). kfortunes 레포는 이제 사주운세 부활 전용으로 비워짐(48edd60 복원 예정). kstarmatch는 라이브 유지(AdSense 보류).
> 📋 **사주 부활 마스터플랜 = `ops/kfortunes-revival.md`** (AdSense+바이럴+유입, 리서치 기반).
> ⛔ **(7/29 워크플로 검증으로 정정) 48edd60 "자산 풍부·최소선 초과" 판단은 틀렸다.** ~115p의 실체는 saju×51+stars×50 동일템플릿 반복 → 2026 scaled content abuse 기준에서 **심사 자산이 아니라 부채**(심사=사이트 전체 평균 품질). 부활=배선이 아니라 **부채 noindex 격리+집필**. 정본=`ops/kfortunes-masterplan.md`.
> ✅ **호재**: Google 정책상 운세/사주는 금지·제한 카테고리 **아님**. 품질평가 가이드라인은 astrology를 **비YMYL**로 명시 → 자격증 불필요, 반려원인은 100% 콘텐츠 품질. 단 질병·투자 **단정형 예측**은 정책 위반이므로 오락 면책 **필수**.
> 🔒 **결정 확정(6/6)**: ①정적먼저(백엔드/firebase/GPT/결제 제거) ②결제 영구제외 ③GPT실시간→풍부한 정적콘텐츠 대체 ④듀얼언어 프론트도어, AdSense는 주력1개 언어 먼저 ⑤도메인 kfortunes.com 유지 ⑥P0=바로 새로설계(자산 토대로). 상세=`ops/kfortunes-revival.md`.
> 🛰️ **운영모드: 코드작업은 각 레포 세션(kfortunes/kstarmatch)에서 분산. mission-control=총괄 컨트롤·기억만.**
> 🎨 **디자인 표준지령(상시): 모든 레포 디자인은 supanova 스킬로(`uxjoseph/supanova-design-skill` → `.claude/skills/` 설치). 개선=`supanova-redesign-engine`, 신규=`supanova-design-engine`. 레포별 기준 덮어쓰기. 전문=`ops/design-directive.md`. kfortunes 상세=`ops/kfortunes-design.md`(result.html은 redesign 엔진).**
> 🔁 **추진 루프(게이트형)** — `ops/loop-plan.md` M0~M3 초안은 워크플로 검증으로 **재배치됨**. 정본 순서 = `ops/kfortunes-masterplan.md` §5: **M0.5'(무노출 정보수집) → M-1'(법무게이트) → M0'(문서정정) → M1'(아키텍처동결) → M1.5'(엔진검증) → M2'(집필) → M3'(배선) → M4'(신청) → M5'(승인후)**. 순서 핵심: **되돌릴 수 없는 행동(기관 노출)은 되돌릴 수 있는 정보수집 뒤에.**
> ⏸ **현재 M0.5' 대기(사용자, 2~3시간, 리스크 0)**: ①AdSense 대시보드 3종(계정상태/사이트목록/결제정보) ②Cloudflare Pages↔레포↔도메인 매핑 ③kfortunes.com DNS 생존 ④48edd60 115p 단어수 실측(git show, 복원 불필요) ⑤소속 국립대/사립대.
> 🔴 **미해결 치명 결함 11종(C1~C11)** = masterplan §2. 최상위: `/result` 논리모순(→`/r/{key}` 150p 사전생성), **만세력 엔진 정확도 미검증**(한국표준시 1954~61 UTC+8:30·서머타임 → 일간 자체가 틀릴 수 있음), AdSense **계정 상태** 미조사, Cloudflare 복원 시 **kstarmatch.com 사망**.
> ⚠️ **정정(6/6): '2제품 혼재' 전제 틀림 → split 취소.** 조사결과 현 레포(이름=kfortunes)는 **kstarmatch 단일 제품**. 사주운세(kfortunes)는 피벗커밋 46acf98에서 삭제돼 **git 히스토리 48edd60에만** 잠듦(블로그6·element·daily·compatibility·faq·백엔드/firebase 포함). 나눌 게 없음. 레포 이름↔내용 불일치는 코스메틱이라 방치 권장(Cloudflare Pages가 JungyulPark/kfortunes에 연결돼 rename=배포만 깸). **결정(6/6, 제품 베팅): AdSense 현금자산 = ⓑ사주 정적 부활(신규 레포·정적사이트, 백엔드/firebase/결제 제외).** kstarmatch는 라이브 그대로 유지(AdSense는 보류). 사주 콘텐츠=무한생산→Phase1 "복제 가능한 AdSense 템플릿 1개" 후보. **다음 액션: 히스토리 48edd60에서 사주 정적 콘텐츠 복구·검증** — 블로그/element/daily가 진짜 정적 prose인지(백엔드 의존 아닌지) view-source 기준 확인. 그래야 "정적 부활"이 싼지 판가름.

| repo | 상태 | 비고 / 다음 액션 |
|---|---|---|
| kfortunes | 🟡 | =**KStar Match**(영문, K-pop 매칭, kstarmatch.com·Cloudflare). 목표=AdSense 재신청. **진단완료 6/6** — 반려사유: ①thin content(색인 가능 페이지 3개뿐, 그중 2개가 의무 약관/개인정보 → 실질 독자콘텐츠는 홈 1p ~300단어) ②결과페이지가 크롤러엔 빈 페이지(JS전용+noindex+robots Disallow, 정적본문 ≈0) ③About/Contact 부재(E-E-A-T). 면책 있으나 '의학·법률·재정 조언 아님' 명시 없음. **다음=최소 승인 패키지 일괄**: 영문 정적 콘텐츠글 8+ · About · Contact · sitemap갱신 · 면책보강 (+결과페이지 정적본문). 쪼개 재신청 금지(심사 1~2주 소요 → 한 방에). |
| ksajudaily | 🔵 | 사주 데일리. kfortunes 템플릿 검증 후 복제 후보. |
| Kcolor | 🔵 | 퍼스널컬러. 복제 후보. |
| Kname | 🔵 | 이름풀이. 복제 후보. |
| kfacestyle | 🔵 | 얼굴형 스타일. 복제 후보. |
| stylist-studio | 🔵 | (public) 스타일리스트. 상태 확인 필요. |
| Glowdecode | 🔵 | 상태 확인 필요. |
| dreamrender | 🔵 | 꿈해몽 추정. 복제 후보. |
| Kphotostudio | 🔵 | 상태 확인 필요. |
| Kcal | 🔵 | 칼로리. 복제 후보. |
| facerank | ⚪ | 민감 소지(외모 평가). 보류 권장. |
| nobelminds | 🔵 | 상태 확인 필요. |
| bibleforeveryone | 🔵 | 성경. 본인 관심사와 연결. 복제 후보. |

## 트랙 2 — 콘텐츠/자동화 인프라 ★유튜브 엔진
| repo | 상태 | 비고 / 다음 액션 |
|---|---|---|
| automarketer | 🟡 | 자동 마케팅. n8n 파이프라인과 관계 확인. |
| WinnerCopy | 🟡 | 1등앱 카피 분석 추정. 상태 확인. |
| headshotMaker | 🟡 | 증명사진. 최근 활동 있음(6/2). |
| Headshot | 🟡 | (public) 위와 관계 확인 필요. |

## 트랙 3 — 연구 (논문/그랜트) ※수익 아님, 커리어 자산
| repo | 상태 | 비고 |
|---|---|---|
| VCC_TED | 🟡 | Arc VCC 2026 챌린지. |
| TEDGWAS | 🟡 | (public) MR 논문 관련. |
| Lymphoma | 🟡 | MALT 림프종 (BJO 심사중). |
| TGFbeta | 🟡 | 삼성미래기술 6/19 마감. **시한 있음.** |
| Myopia_Study_1 | 🟡 | (public) |
| Myopia_Atropine_TGFb_Hippo | 🟡 | (public) |
| CDWstudy | 🟡 | 최근 활동(6/3). |

## 트랙 4 — 임상 AI 제품 후보
| repo | 상태 | 비고 |
|---|---|---|
| Project_ptosisAI | 🟡 | 안검하수 AI. 안성형 진단 제품 라인. |
| SleepApneaAI | 🔵 | (Dart=Flutter) 수면무호흡. |
| InsuranceJob | 🟡 | 보험 심사 AI. 최근 활동(15h). 현금 트랙 연결. |

## 트랙 5 — 개인/금융 ※개인용, 회사와 분리
| repo | 상태 | 비고 |
|---|---|---|
| BillionaireMap | 🟡 | 최근 가장 활발(9 commits). 개인 자산 추적? |
| tradelog-bitget | ⚪ | 트레이딩 로그. |
| quantbot | ⚪ | 퀀트봇. |

---

## 지금 시점 우선순위 요약 (관제탑 판단)
1. **시한 임박**: TGFbeta (삼성 6/19) — 연구지만 데드라인이 최우선.
2. **현금 검증**: AdSense 자산을 **사주 정적 부활**로 결정(kstarmatch는 thin-content 본질이라 보류). **다음 한 가지=히스토리 48edd60의 사주 정적 콘텐츠 복구·검증**(정적 prose인지 확인) → 그 위에 신규 정적 사이트 + AdSense.
3. **콘텐츠 재개**: 닥터인사이트 n8n 안정화 → 유튜브 재시작 (channels.md 참고).
