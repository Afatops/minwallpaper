//
//  ImageSaver.swift
//  Wallpaper Min
//
//  Created by Александр Редин on 03.05.2020.
//  Copyright © 2020 Aleksandr Redin. All rights reserved.
//

import UIKit

class ImageSaver: NSObject {
    var successHandler: (() -> Void)?
    var errorHendler: ((Error) -> Void)?
    
    func writeToPhotoAlbum(image: UIImage) { UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveError), nil) }
        
    @objc func saveError(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            errorHendler?(error)
        } else {
            successHandler?()
        }
    }
}
