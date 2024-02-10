import ProjectDescription

let project = Project(
    name: "TuistDemo",
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
            dependencies: []
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
