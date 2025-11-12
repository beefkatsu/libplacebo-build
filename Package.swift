// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libplacebo",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libplacebo", 
            targets: ["_Libplacebo"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libplacebo",
            dependencies: ["lcms2", "Libdovi", "MoltenVK", "Libshaderc_combined", "Libplacebo"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.16.0-xcode26/lcms2.xcframework.zip",
            checksum: "68faa94ee8f1d58af4c02922a4845f8ac6aaf77f33034f3b4a6a26ecfff14242"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.1-xcode26/Libdovi.xcframework.zip",
            checksum: "8c2816cff25cc5e4b0330d4017b27375784b4096ca05aeaad8e7f513dbef9c18"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.4.0-xcode26/Libshaderc_combined.xcframework.zip",
            checksum: "f5d8d4c5f031263c088cb2e51658c147194fab9361b810157d178b2b6424fad3"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.0-xcode26/MoltenVK.xcframework.zip",
            checksum: "dcf107451681cf66d7af3ac41b15fd260c36e7849977cc885a468ad7b366d8c1"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-xcode26/Libplacebo.xcframework.zip",
            checksum: "2ef0833cda1a1b24360eb389429ef99b9bee48bc1cb13d871f937e6c0963fa9c"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
