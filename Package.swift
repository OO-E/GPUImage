// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "GPUImage",
    platforms: [
        .iOS(.v5)
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
            cSettings: [
                .define("CLANG_MODULES_AUTOLINK", to: "YES"),
                .headerSearchPath("."),
                .headerSearchPath("Base"),
                .headerSearchPath("Filters"),
                .headerSearchPath("Movie"),
                .headerSearchPath("Picture"),
                .headerSearchPath("Video"),
                .headerSearchPath("Vendor"),
                .headerSearchPath("mac"),
                .headerSearchPath("iOS")
            ],
            linkerSettings: [
                .linkedFramework("OpenGLES"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AVFoundation")
            ],
            swiftSettings: [
                .define("GPUIMAGE_IOS"),
                .define("GPUIMAGE_OPENGLES"),
                .define("GPUIMAGE_SIMULATOR=0")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
