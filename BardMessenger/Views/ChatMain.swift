//
//  ChatMain.swift
//  BardMessenger
//
//  Created by Rizwan on 5/27/23.
//

import SwiftUI


struct ChatMain: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var msg: String = ""
    
    
    var btnBack: some View{
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image("ic-back")
                .resizable()
                .frame(width: 22, height: 22)
        }

    }
    
    var body: some View {
        VStack{
            Chat()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: btnBack)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack{
                    Text("Chat GPT")
                        .fontWeight(.medium)
                        .ignoresSafeArea()

                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(.green)
                            .frame(width: 8, height: 8)

                        Text("Online")
                            .font(.system(size: 14))
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
            
    }
}

struct ChatMain_Previews: PreviewProvider {
    static var previews: some View {
        ChatMain()
    }
}
