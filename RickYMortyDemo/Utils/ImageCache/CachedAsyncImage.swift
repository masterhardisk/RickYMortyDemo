//
//  CachedAsyncImage.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 28/10/24.
//
import Foundation
import SwiftUI


struct CachedAsyncImage: View {
    let imageCache = ImageCache.shared
    let url: URL?
    @State private var image: UIImage? = nil
    @State private var isLoading: Bool = false
    @State private var errorMessage: String? = nil

    var body: some View {
        Group {
            if let url = url {
                if let image = image {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } else if isLoading {
                    ProgressView() // Indicador de carga
                } else if let errorMessage = errorMessage {
                    Text(errorMessage) // Mensaje de error
                        .foregroundColor(.red)
                } else {
                    Image(.placeholder).onAppear(perform: loadImage)
                    
                }
            } else {
                Image(.placeholder).onAppear(perform: loadImage)
            }
        }
        .frame(maxHeight: 200) // Ajuste de tamaño
    }
    
    private func loadImage() {
        guard let url = url else { return }
        isLoading = true
        errorMessage = nil
    
        if let cachedImage = ImageCache.shared.getImage(forKey: url.absoluteString) {
            self.image = cachedImage
            isLoading = false
            return
        }

        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let downloadedImage = UIImage(data: data) {
                    // Guardar la imagen en caché
                    ImageCache.shared.saveImage(downloadedImage, forKey: url.absoluteString)
                    await MainActor.run {
                        self.image = downloadedImage
                    }
                } else {
                    throw NSError(domain: "InvalidImageData", code: 0, userInfo: nil)
                }
            } catch {
                // Manejo de errores
                await MainActor.run {
                    self.errorMessage = "Error al cargar la imagen."
                }
            }
            isLoading = false
        }
    }
}
