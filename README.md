# 작필 코치

필사 텍스트를 넣으면 Claude가 30년 차 에디터처럼 뼈대를 뽑고, 내 경험을 인터뷰해서 OREO 에세이로 써 주는 폴더입니다.

## 설치

명령 한 줄이면 `workspace/jakpil` 폴더에 받는다. 필요한 건 git 하나뿐이다.

macOS / Linux (터미널):
```bash
curl -fsSL https://raw.githubusercontent.com/yunbroai/jakpil/main/install.sh | bash
```

Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/yunbroai/jakpil/main/install.ps1 | iex
```

같은 명령을 다시 실행하면 최신 버전으로 업데이트된다. `drafts/`에 쓴 에세이는 git이 건드리지 않아서 업데이트해도 그대로 남는다.

에세이를 쓰려면 Claude Code(데스크톱 앱의 Code 탭이나 터미널의 `claude`)가 있어야 한다.

## 쓰는 법

1. 이 `jakpil` 폴더를 Claude Code에서 엽니다.
   - 데스크톱 앱: Code 탭 → 폴더 선택 → `jakpil`
   - 터미널: `cd jakpil` 후 `claude`
2. 필사한 문장을 붙여 넣습니다. 예: `필사 텍스트: ...`
3. Claude가 4줄 뼈대를 뽑고 질문 3개를 던집니다. 내 실제 경험으로 답합니다.
4. 16칸 설계를 거쳐 완성된 에세이가 `drafts/` 폴더에 저장됩니다.

코치 설정은 `CLAUDE.md`에 있습니다. 이 폴더 안에서 Claude를 열면 자동으로 적용됩니다.

## 손으로 먼저 써 보고 싶을 때

- `tools/oreo-note.html`: 더블클릭하면 브라우저에서 열리는 오레오 에세이 노트입니다. 쓴 내용은 이 컴퓨터 브라우저에 저장됩니다. 완성본 화면의 "워크시트 전체 받기 (.md)"로 받은 파일을 `drafts/`에 넣으면 Claude가 재료로 씁니다.
- `worksheets/oreo-worksheets.pdf`: A4 인쇄용 빈 양식 5장입니다.

## 폴더 구조

```
jakpil/
├── CLAUDE.md                     작필 코치 설정
├── README.md
├── drafts/                       완성 에세이가 저장되는 곳
├── tools/oreo-note.html          오레오 에세이 노트 (더블클릭)
├── worksheets/oreo-worksheets.pdf  인쇄용 양식
├── install.sh                    macOS / Linux 설치·업데이트
└── install.ps1                   Windows 설치·업데이트
```
