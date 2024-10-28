//
//  ImageCache.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 28/10/24.
//
import Foundation
import SwiftUI

class ImageCache {
    static let shared = ImageCache()
    static let memoryCache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getImage(forKey key: String) -> UIImage? {
        return ImageCache.memoryCache.object(forKey: key as NSString)
    }
    
    func saveImage(_ image: UIImage, forKey key: String) {
        ImageCache.memoryCache.setObject(image, forKey: key as NSString)
    }
}
