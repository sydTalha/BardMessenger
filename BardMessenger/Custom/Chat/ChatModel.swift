//
//  ChatModel.swift
//  BardMessenger
//
//  Created by Rizwan on 5/31/23.
//

import Foundation
import SwiftUI

class ChatModel: ObservableObject{
    var text = ""
    @Published var arrayOfMessages: [String] = []
    @Published var arrayOfPositions: [BubblePosition] = []
    @Published var position = BubblePosition.right
    
    
    
    
}
