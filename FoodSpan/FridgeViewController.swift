//
//  File.swift
//  FoodSpan
//
//  Created by Chandrala on 5/7/24.
//

import Foundation
import UIKit

class FridgeViewController: UIViewController {
    // MARK: - Property
    
    private let id: String
    
    // MARK: - Initializer
    
    init(id: String) {
        self.id = id
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
