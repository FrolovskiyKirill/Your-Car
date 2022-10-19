//
//  NoItemsView.swift
//  Your Car
//
//  Created by Kirill Frolovskiy on 18.10.2022.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Hi")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                    .padding(.bottom, 30)
                NavigationLink(
                    destination: AddView()) {
                        Text("Add smth!")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(animate ? Color.red : Color.accentColor)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, animate ? 47 : 50)
                    .shadow(
                        color: animate ? Color.red.opacity(0.7) :
                            Color.accentColor.opacity(0.7),
                        radius: animate ? 30 : 10,
                        x: 0,
                        y: animate ? 50 : 47)
                    
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y: animate ? -7 : 0)
                
            }
            .multilineTextAlignment(.center)
            .onAppear(perform: addAnimation)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
