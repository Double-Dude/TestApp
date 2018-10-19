//
//  FileManager.swift
//  TestApp
//
//  Created by Ray.Qu on 18/10/18.
//  Copyright © 2018 Ray.Qu. All rights reserved.
//

import Foundation
class FileManager {
    private var completion: (()-> Void)?
    
    func copyFileAsync(completion: @escaping ()-> Void) {
        self.completion = completion
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.completion?()
        }
    }
    
    deinit {
        debugPrint("Filemanager deinit")
    }
}
