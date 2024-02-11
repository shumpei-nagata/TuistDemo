import ProjectDescription

let project = Project(
    name: "TuistDemo",
    packages: [.remote(
        url: "https://github.com/Alamofire/Alamofire",
        requirement: .exact("5.8.1")
    )],
    targets: [
        .target(
            name: "TuistDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TuistDemo/Sources/**"],
            resources: ["TuistDemo/Resources/**"],
            scripts: [
                .pre(script: "echo $PATH", name: "echo path")
            ],
            dependencies: [
                .package(product: "Alamofire")
            ]
        ),
        .target(
            name: "TuistDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistDemoTests",
            infoPlist: .default,
            sources: ["TuistDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistDemo")]
        ),
    ]
)
