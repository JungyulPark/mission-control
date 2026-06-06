#!/usr/bin/env bash
# Mission Control 셋업 스크립트
# 기존 GitHub 레포들을 submodule로 연결한다.
# 처음엔 전부 말고 "지금 다룰 것"만 연결하는 걸 권장 (최소형 시작).

set -e
GH=https://github.com/JungyulPark
mkdir -p projects

# ── 최소형 시작 세트 (권장: 먼저 이것만) ──────────────
git submodule add $GH/kfortunes.git      projects/kfortunes
git submodule add $GH/InsuranceJob.git   projects/InsuranceJob
git submodule add $GH/automarketer.git   projects/automarketer

# ── 나중에 필요할 때 주석 해제해서 추가 ─────────────────
# 수익화 트랙
# git submodule add $GH/ksajudaily.git      projects/ksajudaily
# git submodule add $GH/Kcolor.git          projects/Kcolor
# git submodule add $GH/Kname.git           projects/Kname
# git submodule add $GH/kfacestyle.git      projects/kfacestyle
# git submodule add $GH/stylist-studio.git  projects/stylist-studio
# git submodule add $GH/Glowdecode.git      projects/Glowdecode
# git submodule add $GH/dreamrender.git     projects/dreamrender
# git submodule add $GH/Kphotostudio.git    projects/Kphotostudio
# git submodule add $GH/Kcal.git            projects/Kcal
# git submodule add $GH/bibleforeveryone.git projects/bibleforeveryone
# git submodule add $GH/nobelminds.git      projects/nobelminds
# 콘텐츠 인프라
# git submodule add $GH/WinnerCopy.git      projects/WinnerCopy
# git submodule add $GH/headshotMaker.git   projects/headshotMaker
# git submodule add $GH/Headshot.git        projects/Headshot
# 임상 AI
# git submodule add $GH/Project_ptosisAI.git projects/Project_ptosisAI
# git submodule add $GH/SleepApneaAI.git    projects/SleepApneaAI
# 연구 (원하면)
# git submodule add $GH/TGFbeta.git         projects/TGFbeta
# git submodule add $GH/VCC_TED.git         projects/VCC_TED

git submodule update --init --recursive
echo "✅ Submodules connected. 'git status'로 확인하세요."
