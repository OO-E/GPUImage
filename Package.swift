// swift-tools-version:5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "GPUImage",
                        defaultLocalization: "en",
                      platforms: [.macOS(.v10_10),
                                  .iOS(.v11),
                                  .tvOS(.v9),
                                  .watchOS(.v2)],
                      products: [.library(name: "GPUImage",
                                          targets: ["GPUImage"])],
                      targets: [.target(name: "GPUImage",
                                        path: "framework/Source",
                                        publicHeadersPath: "")])