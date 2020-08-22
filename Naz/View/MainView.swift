//
//  MainView.swift
//  Naz
//
//  Created by Кристина Перегудова on 22.08.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var news: [String] = ["Новый игрок"]
    @Binding var buyTicket: Bool
    @ObservedObject var networkService = NetworkService()
    
    var body: some View {
        ZStack {
            Colors.grey.edgesIgnoringSafeArea(.all)
            VStack {
                Text("\(self.networkService.events.count)")
                if self.networkService.events.count != 0 {
                    VStack {
                        Text(networkService.events[0].name)
                            .font(.system(size: 40))
                            .bold()
                            .foregroundColor(Colors.blue)
                        
                        Text("\(networkService.events[0].date)")
                            .font(.system(size: 30))
                        
                        Text(networkService.events[0].place)
                            .font(.system(size: 20))
                        
                        Button(action: {
                            self.buyTicket.toggle()
                        }) {
                            Text("Купить билет")
                                .padding(15)
                                .foregroundColor(Colors.blue)
                        }
                        .frame(width: UIScreen.main.bounds.width - 60)
                        .background(Colors.yellow)
                        .cornerRadius(15)
                        .padding(.top, 10)
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                
                
                ScrollView {
                    VStack {
                        Text("1")
                    }
                }
            }
        }
    }
}
