import SwiftUI

struct ImageReviewView: View {
    let image: UIImage
    @Binding var isPresented: Bool
    let completion: (Bool) -> Void
    
    var body: some View {
        VStack {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(spacing: 50) {
                Button(action: {
                    completion(false)
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    completion(true)
                }) {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.green)
                }
            }
            .padding(.bottom, 30)
        }
    }
} 