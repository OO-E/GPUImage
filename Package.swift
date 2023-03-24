// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "GPUImage",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GPUImage",
            targets: ["GPUImage"]
        ),
    ],
    dependencies: [
        // no dependencies
    ],
    targets: [
        .target(
            name: "GPUImage",
            path: "framework/Source",
            exclude: [
                "Mac",
                "iOS/GPUImageFilterPipeline.*",
                "iOS/GPUImageMovieComposition.*",
                "iOS/GPUImageVideoCamera.*",
                "iOS/GPUImageStillCamera.*",
                "iOS/GPUImageUIElement.*"
            ],
            resources: [
                .copy("Resources/*.png")
            ],
            publicHeadersPath: ".",
            swiftSettings: [
                .define("GPUIMAGE_IOS"),
                .define("GPUIMAGE_OPENGLES"),
                .define("GPUIMAGE_SIMULATOR=0")
            ]
        ),
    ]
)
