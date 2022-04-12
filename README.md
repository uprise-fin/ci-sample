# CI Sample

UPRISE의 Github Action CI 샘플 프로젝트입니다.

## workflow 소개
.github/workflows에는 다양한 워크플로우 예제가 있습니다.

#### base_build.yaml
 베이스 이미지 빌드를 위해 사용되는 워크플로우 입니다. base-0.0.1 과 같은 형식으로 태그를 레포지토리에 푸시하면 베이스 이미지를 빌드합니다. 

 베이스 이미지는 이미지 빌드가 오래걸리는 경우, 빌드 속도를 최적화하기 위해서 사용할 수 있습니다. 빌드에 걸리는 시간이 짧은 경우, 베이스 이미지를 두지 않는 편을 권장합니다. 

#### release_build.yaml
 릴리즈 이미지 빌드를 위해 사용되는 워크플로우입니다. v0.0.1 과 같은 형식으로 태그를 레포지토리에 푸시하면 베이스 이미지를 빌드합니다.

#### preview_build.yaml
  PR에 preview 태그를 다는 경우에 PR 프리뷰용 이미지를 빌드하는 워크플로우입니다. PR preview 배포가 필요한 경우에 사용됩니다.

#### ci.yaml
 CI 과정에 대한 워크플로우입니다. 이 샘플에서는 유닛테스트와  테스트 커버리지 체크를 합니다. [예제 PR](https://github.com/uprise-fin/ci-sample/pull/4) 참고 바랍니다.

#### release_drafter.yaml
 PR에 main 브랜치에 머지될 때마다 GitHub Release Draft에 반영해주는 워크플로우입니다. [예제 Release](https://github.com/uprise-fin/ci-sample/releases/tag/v0.0.2) 참고 바랍니다.

## FAQ
### Buildx를 사용하는 이유가 있을까요?
 현재 우리 회사에는 애플 실리콘 맥(Arm64)과 인텔 맥(Amd64)이 공존하고 있습니다. 로컬 환경에서 쾌적하게 작업할 수 있도록 arm64와 amd64 이미지를 같이 빌드하게 되어있습니다. 

 추가로, 클라우드 환경에서 Arm은 높은 전성비를 무기로 빠르게 발전하고 있습니다. 이런 환경에서 Arm 아키텍처에 대한 호환성은 미리미리 준비해놓을 필요가 있습니다.
