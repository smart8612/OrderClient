# 🍔 Restaurant Order Client

## ⭐️ Overview

* [Restaurant Server](https://github.com/smart8612/Restaurant-Server)의 http API를 연동합니다.
* 레스토랑 서버에 카테고리, 음식 메뉴를 확인하고 주문을 넣을 수 있습니다.

## 📰 Related Articles

OrderClient의 개발과정 및 의도는 다음의 블로그 게시물에서 확인하실 수 있습니다.

### 1️⃣ iOS 앱 설계 퓨전 레시피 연재

* [6부 - 모델링](https://singularis7.tistory.com/92)

* [7부 - 네트워크 코드 모델링](https://singularis7.tistory.com/93)

### 2️⃣ 기술 참조 자료

* [singularis7's Life Note](https://singularis7.tistory.com)

* [[Swift] 공식문서 씹어먹기: Concurrency](https://singularis7.tistory.com/97)

## 🖼️ UML Diagram

| ![OrderClient 2](https://github.com/smart8612/OrderClient/assets/25794814/ebbeccb9-59db-44e4-8fbc-3e96ae8ecc10) |
| :----------------------------------------------------------: |
| ![OrderClient](https://github.com/smart8612/OrderClient/assets/25794814/5f4a19ba-d5d6-4c54-8d0b-84e9ad4d3009) |

## 🛠️ Used Technology

#### 패키지 의존성

* [NetworkKit](https://github.com/smart8612/NetworkKit): API를 하나의 구조체 타입으로 관리 위한 네트워크 추상화 계층 제공

#### 도구

`#Xcode` `#Swift`

#### 모델링

`#Protocol-Oriented Programming`

#### 비동기 API 및 동시성

`#Swift Concurrency`

#### 단위 테스트

`#XCTest`

## ⚙️ Installation

### Swift Package Manager

* Apple 플랫폼의 응용프로그램을 개발하는 프로젝트에서는 Xcode UI를 통해 OrderClient에 대한 의존성을 추가하실 수 있습니다.
* SPM 패키지 프로젝트를 통해 개발 중이어도 `Package.swift` 파일을 수정하여 OrderClient에 대한 의존성을 추가하실 수 있습니다.

#### Xcode UI를 활용한 의존성 추가법 (권장)

1. Xcode의 메뉴바에서 Project Settings를 선택합니다.
2. Project Settings의 하위 메뉴 중 Swift Packages를 선택합니다.
3. Swift Packages 창에서 OrderClient를 추가합니다.

#### Package.swift를 활용한 의존성 추가법

1. 다음의 dependency를 Package.swift에 추가합니다.

```swift
.package(url: "https://github.com/smart8612/OrderClient", branch: "main")
```

2. OrderClient를 사용하고 싶은 target에 의존성을 추가합니다.

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PACKAGE_NAME",
    platforms: [ .iOS(.v14) ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YOUR_PACKAGE_NAME",
            targets: ["YOUR_PACKAGE_NAME"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/smart8612/OrderClient", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "YOUR_PACKAGE_NAME",
            dependencies: ["OrderClient"]),
    ]
)
```

## 📖 API Documentation

Xcode의 DocC 컴파일러를 활용해 API 도큐멘트를 빌드할 수 있습니다. Build Documentation 기능을 통해 API의 세부 설명을 확인해보세요!

* 단축키: <kbd>control</kbd> + <kbd>shift</kbd> + <kbd>command</kbd> + <kbd>d</kbd>

다음의 GitHub Pages 를 통해서 온라인 도큐멘트를 열람하실 수 있습니다.

* [OrderClinet Official Documentation](https://smart8612.github.io/OrderClient/documentation/orderclient/)

## 🤼 연관 프로젝트

OrderClient와 연관된 샘플 프로젝트를 다음의 Repository에서 확인하실 수 있습니다.

* 🖥️ Restaurant Server Application : [Restaurant Server](https://github.com/smart8612/Restaurant-Server)

* 📱 Restaurant Order Application : [OrderApp Toy Project](https://github.com/smart8612/OrderApp-Toy-Project)
