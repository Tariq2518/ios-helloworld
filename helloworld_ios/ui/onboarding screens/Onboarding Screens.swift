//
//  Onboarding Screens.swift
//  helloworld_ios
//
//  Created by Tariq Hussain on 11/08/2024.
//

import SwiftUI

struct OnBoardingModel : Identifiable{
    
    var id = UUID()
    var title : String
    var description: String
    var image : String?
    
}

extension OnBoardingModel {
    
    static var onBoardingData : [OnBoardingModel]{
        [
            OnBoardingModel(title: "First Screen", description: "My First sceeen description"),
            OnBoardingModel(title: "Second Screen", description: "My Second sceeen description"),
            OnBoardingModel(title: "Third Screen", description: "My Third sceeen description")
        ]
    }
}

struct Onboarding_Screens: View {
    
    var data = OnBoardingModel.onBoardingData
    
    init(){
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = .gray
    }
    
    @State var currentPage = 0
    
    
    var body: some View {
       
       
        
        VStack{
            TabView(selection: $currentPage){
                ForEach(data.indices){ index in
                    
                    VStack{
                        Text(data[index].title)
                            .font(.headline)
                        Text(data[index].description)
                            .font(.body)
                        
                        
                    }
                }
            }.tabViewStyle(.page(indexDisplayMode: .always))
            
            HStack{
                Spacer()
                Button(action: {
                    withAnimation{
                        if currentPage < data.count - 1 {
                            currentPage += 1
                        }
                    }
                }) {
                    Image(systemName: currentPage == data.count-1 ? "checkmark.circle" : "chevron.right.circle")
                        .frame(width: 50, height: 50, alignment: .center)
                        .padding(.all)
                        
                }
            }
        }
        
    }
}

#Preview {
    Onboarding_Screens()
}
