# Camera Overlay Library

A Swift package that provides an easy-to-use camera interface with overlay capabilities for iOS applications.

## Features

- Ready-to-use camera interface with preview
- Photo capture functionality
- Image review interface with accept/reject options
- Automatic permission handling
- Photo library integration for saving captured images
- Built with SwiftUI for modern iOS applications

## Requirements

- iOS 15.0+
- Swift 6.0+
- Xcode 15.0+

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift` file:swift
dependencies: [
.package(url: "YOUR_REPOSITORY_URL", from: "1.0.0")
]

Or add it directly through Xcode:

1. File > Add Packages...
2. Enter the repository URL
3. Select the version you want to use

## Usage

### Basic Implementation

swift
import SwiftUI
import CameraOverlayLibrary
struct ContentView: View {
var body: some View {
CameraOverlayLibrary.createCameraView()
}
}

### Features Included

- **Camera Preview**: Full-screen camera preview with proper aspect ratio handling
- **Capture Button**: Large, easy-to-tap camera button
- **Image Review**: Post-capture review screen with accept/reject options
- **Auto-Saving**: Accepted photos are automatically saved to the device's photo library

## Permissions

The library automatically handles camera and photo library permissions. Make sure to include these keys in your Info.plist:

xml
<key>NSCameraUsageDescription</key>
<string>This app needs access to camera to take photos.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs access to photo library to save photos.</string>

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Author

Prakhar Saxena

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
