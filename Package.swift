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
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.16.0/lcms2.xcframework.zip",
            checksum: "077eec06ddbb8b482539290d5a211eb45e234d37c1de4f0476f505eb85b3032b"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.4.0/Libshaderc_combined.xcframework.zip",
            checksum: "faa469e7318d913909858483e005283b792cb3cf7610efdf2e7afc4fbfa23eb4"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.0/MoltenVK.xcframework.zip",
            checksum: "81aa59540c563e17558238e9475166a4b29c4119878e216d2de42ca9315bcc40"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-fix/Libplacebo.xcframework.zip",
            checksum: "9938d8d8c13ead77e316221b417f7d623187091eace854852237bd2776124c30"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
