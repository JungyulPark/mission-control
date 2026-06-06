# KFORTUNES 부활 마스터플랜 — 사주 콘텐츠 자산

> 목표: 사주를 "완벽 + 바이럴 + AdSense 통과 + 고유입" 정적 콘텐츠 사이트로 부활.
> 결제 제약(사업자등록 불가) → 수익화는 **AdSense + 어필리에이트**만.
> 작성 2026-06-06. kstarmatch는 별도 레포로 분가 완료(브랜치 claude/bold-rubin-VmcdW).

## 0. 한 줄 전략
사주를 **세 층(바이럴 → 데일리 → 에버그린)을 하나의 깔때기로 묶은** 정적 콘텐츠 자산으로 만든다.
바이럴이 유입을 터뜨리고, 데일리가 재방문을 만들고, 에버그린이 AdSense 통과 + 롱테일 SEO 복리를 만든다.

## 1. 시장에서 배운 규칙 (리서치 요약, 출처 문서 하단)
### AdSense 2026
- 통과 최소선: **오리지널·사람이 쓴 글 15~25편, 편당 800~1500단어+**.
- #1 반려: thin content + **자동생성 콘텐츠 금지**. 템플릿으로 찍은 양산 페이지 = 차단.
- 필수: About/Contact/Privacy/Disclaimer/Terms, HTTPS, 모바일 네비.
- ⭐ 운세 니치 자체는 OK — horoscope.com이 AdSense 운영 중. **문제는 주제가 아니라 콘텐츠 질.**
### 한국 사주 시장 (점신 1900만·포스텔러)
- 프리미엄: 무료 콘텐츠로 진입장벽↓ → 필요시 리포트 확장. (그들은 상담/리포트 결제로 수익 → 우리는 결제 막힘 → AdSense+어필리로 대체)
- 신뢰 신호(후기·랭킹·전문성) 중시.
### 바이럴 퀴즈/결과
- **공유형 결과카드 = OG이미지 + "내 결과 공유" 버튼** → 카톡/인스타 공유. 퍼스널리티 결과는 40% 더 공유됨.
- 6~8문항, 모바일 우선, 개인화("내가 보인다"), 기억에 남는 결과명.
### 프로그래매틱 SEO (운세)
- 롱테일("병오일주 성격", "임인년 신년운세")이 전환↑.
- 오늘의운세 = 150~200단어 crawl-bait → 에버그린 가이드로 내부링크.
- 한국은 **신년·토정비결 시즌(연초)에 트래픽 폭발** → 타이밍 자산.

## 2. 깔때기 구조 (세 층 = 하나)
| 층 | 역할 | 형태 | 주의 |
|---|---|---|---|
| TOP 바이럴 | 유입 폭발 | 사주 기반 공유형 결과("내 일간 캐릭터", "궁합 점수") + 카톡공유 + OG카드 | 결과페이지가 JS전용이면 크롤러 빈페이지(=kstarmatch 실패 재현). 바이럴은 별 경로, 색인은 에버그린이 책임 |
| MIDDLE 데일리 | 재방문 습관 | 오늘의 운세(띠별/일간별) | CLAUDE.md "데일리 재방문" 템플릿. crawl-bait로도 작동 |
| BOTTOM 에버그린 | AdSense 통과 + SEO 복리 | 깊은 가이드(사주기초·일간해설·띠궁합·토정비결·오행) | **여기가 AdSense 통과의 본체.** 사람급 품질 필수 |

## 3. AdSense 통과 콘텐츠 셋 (재신청은 1회로 끝낸다)
- 에버그린 **20편+** (편당 1000단어+), 사람급 품질 — 자동생성 티 X:
  - 사주 기초 5편 (사주란/사주 보는 법/십신/오행/만세력)
  - 일간 10편 (갑목~계수, 각 깊게) — 60일주 풀확장은 P3로
  - 띠 궁합 / 토정비결 / 신년운세 / 사주 용어사전 5편
- 정책 5종 + 면책("오락·재미용, 의학·법률·재정 조언 아님" 명시)
- sitemap.xml / robots.txt / ads.txt / HTTPS / 모바일 네비

## 4. 단계 (한 번에 하나, 게이트 통과해야 다음)
> ✅ **48edd60 진단 완료(6/6): 자산이 예상보다 훨씬 알참.** ~115개 정적 페이지(saju×51·stars×50·element×5·blog×5·about/faq/정책) + 결정론적 엔진(saju.js·saju-advanced.js, AI 불필요) + 정적 해설 DB(day-master-details.js). **AdSense 최소선(15~25편)을 이미 초과.** → 부활 = "맨땅 집필"이 아니라 **"백엔드 잘라내고 기존 정적 데이터로 배선"**. 유일한 빨간불 = result.html(382단어, GPT 동적 = kstarmatch 반려 재현점).

- **P0 ✅ 완료**: 48edd60 진단. 자산 풍부 확인.
- **P0.5 (지금, 복원)**: kstarmatch 안전 분리됨 → 현 kfortunes 레포를 48edd60 사주로 복원.
- **P1 (AdSense 게이트, 배선 위주)**: ①result.html 정적화(GPT 제거→DayMasterDetails+SajuAdvanced 본문 렌더) ②compat/daily 정적화 ③firebase auth import·로그인 UI 제거(~12p) ④functions/firebase/lemonsqueezy/gpt-fortune 삭제 ⑤Cloudflare Pages 신규 + 도메인 → **AdSense 재신청**. (집필 보강은 통과 후, 양산 함정 회피)
- **P2 (바이럴)**: 공유형 결과카드(일간 캐릭터) + 카톡 공유 + OG. 색인은 정적이 전담.
- **P3 (스케일)**: 롱테일 확장 + 어필리에이트 — 품질 게이트로 자동생성 금지선 준수. 듀얼언어(i18n 5개국어 이미 존재)는 주력 통과 후 확장.

## 5. 리스크 (냉정)
- **자동생성 함정**: 일주 60 템플릿 양산 = AdSense 재반려. 각 글 사람급 품질 게이트 필수.
- **바이럴 vs 색인 충돌**: 바이럴 결과(JS)는 크롤러에 안 잡힘 → 색인·AdSense는 정적 에버그린이 전담.
- **과확장**: P1(AdSense) 통과 전 P3 손대지 마라. 미완성 프로젝트 하나 더 만들기 금지.
- **시즌성**: 신년/토정비결은 연초 폭발 → P1~P2를 연말까지 끝내면 연초 파도를 탄다.

## 6. 결정 필요 (당신 몫)
- **언어/시장**: 한국어 국내(사주 검색 본진) vs 영문 글로벌(K-wave 올라타기, kstarmatch 방식). → 본진은 한국어 추천.
- **도메인**: kfortunes.com 유지 vs 사주 정체성 도메인 신규.
- **복원 vs 새로쓰기**: 48edd60 콘텐츠가 정적 prose면 복원, JS/백엔드 의존이면 새로 쓰기(frontend-design 스킬).

---
## 출처 (리서치 2026-06-06)
- AdSense 승인 규칙 2026: allareseotools.com/google-adsense-approval, stackedbuddy.com/google-adsense-approval-checklist, support.google.com/adsense/answer/48182
- 한국 사주 시장: jeomsin.co.kr(점신), pro.forceteller.com(포스텔러), brunch.co.kr/@4e2b4f97d7214af/39
- 바이럴 퀴즈: quizandsurveymaster.com/create-viral-quizzes-key-features-trends, help.youengage.me 바이럴 퀴즈 가이드
- 운세 프로그래매틱 SEO: digittrix.com/blogs/marketing-seo-for-astrology-brands, serpsgrowth.com/blog/seo-strategies-for-astrologers, suryaseo.com/how-to-get-more-traffic-on-your-astrology-website-with-seo
