
import PackageDescription

let package = Package(name: "GPUImage",
                      platforms: [.macOS(.v10_10),
                                  .iOS(.v9),
                                  .tvOS(.v9),
                                  .watchOS(.v2)],
                      products: [.library(name: "GPUImage",
                                          targets: ["GPUImage"])],
                      targets: [.target(name: "GPUImage",
                                        path: "framework/Source",
                                        publicHeadersPath: "")])