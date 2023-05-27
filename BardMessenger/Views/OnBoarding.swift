//
//  OnBoarding.swift
//  BardMessenger
//
//  Created by Rizwan on 5/27/23.
//

import SwiftUI

struct OnBoarding: View {
    @StateObject var chatViewModel: ChatViewModel = ChatViewModel()
    @State private var navSelection: String? = nil
    
    var body: some View {
        
        NavigationView {
            VStack{
                Image("splash-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("How may I help you today?")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Text("Using this application you can ask your questions and receive articles using artificial intelligence assistant")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(12)
                NavigationLink(destination: ChatMain(), tag: "0", selection: $navSelection){EmptyView()}
                Button {
                    
                    self.navSelection = "0"
                } label: {
                    Text("Start a new chat")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
                .padding()
                .background(.blue)
                .cornerRadius(22)
                Spacer()
                
            }
        }
        
        .environmentObject(chatViewModel)
        
    }
}

struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
