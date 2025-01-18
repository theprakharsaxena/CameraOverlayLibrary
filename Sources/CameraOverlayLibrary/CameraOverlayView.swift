import SwiftUI
import AVFoundation

public struct CameraOverlayView: View {
    @StateObject private var viewModel = CameraViewModel()
    @State private var showingImageReview = false
    @State private var capturedImage: UIImage?
    
    public init() {}
    
    public var body: some View {
        ZStack {
            // Camera preview
            CameraPreviewView(session: viewModel.session)
                .ignoresSafeArea()
            
            // Overlay controls
            VStack {
                Spacer()
                
                Button(action: {
                    viewModel.capturePhoto { image in
                        self.capturedImage = image
                        self.showingImageReview = true
                    }
                }) {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .background(Color.black.opacity(0.5))
                        .clipShape(Circle())
                        .padding(.bottom, 30)
                }
            }
        }
        .sheet(isPresented: $showingImageReview) {
            if let image = capturedImage {
                ImageReviewView(image: image, isPresented: $showingImageReview) { accepted in
                    if accepted {
                        viewModel.savePhoto(image)
                    }
                    showingImageReview = false
                    capturedImage = nil
                }
            }
        }
        .onAppear {
            viewModel.checkPermissions()
            viewModel.setupSession()
        }
    }
} 