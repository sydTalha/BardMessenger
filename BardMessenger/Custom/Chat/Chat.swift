//
//  Chat.swift
//  BardMessenger
//
//  Created by Rizwan on 5/31/23.
//

import SwiftUI

struct Chat: View {
    
    @ObservedObject var model = ChatModel()
    
    var body: some View {
        GeometryReader { geo in
            VStack{
                CustomScrollView(scrollToEnd: true) {
                    LazyVStack{
                        ForEach(0..<model.arrayOfMessages.count, id:\.self){ index in
                            ChatBubble(position: model.arrayOfPositions[index], color: model.arrayOfPositions[index] == BubblePosition.right ? .green : .blue) {
                                Text(model.arrayOfMessages[index])
                            }
                        }
                    }
                }.padding(.top)
                
                HStack{
                    TextField("Hello ChatGPT", text: $model.text)
                        .overlay(alignment: .trailing) {
                            Button {
                                print("voice record")
                            } label: {
                                Image(systemName: "mic")
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .frame(width: 18, height: 25)
                                    .padding()
                            }

                        }
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding()

                    Button {
                        if model.text != "" {
                            model.position = model.position == BubblePosition.right ? BubblePosition.left : BubblePosition.right
                            model.arrayOfPositions.append(model.position)
                            model.arrayOfMessages.append(model.text)
                            model.text = ""
                        }
                    } label: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(20)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                    .padding(.trailing)

                }
            }
        }
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
