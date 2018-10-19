//
//  ViewController2.swift
//  TestApp
//
//  Created by Ray.Qu on 18/10/18.
//  Copyright © 2018 Ray.Qu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    private var fileManager: FileManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fileManager = FileManager.init()
        
        self.fileManager?.copyFileAsync { [weak self] in
            guard let weakSelf = self else { return }
            weakSelf.print()
            
            weakSelf.fileManager?.copyFileAsync {
                self?.print()
            }
        }
    }
    
    func print() {
        debugPrint("Print messages")
    }
    
    deinit {
        debugPrint("ViewController2 Deinit")
    }
}
