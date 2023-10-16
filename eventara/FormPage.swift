//
//  FormPage.swift
//  eventara
//
//  Created by Ghaliah Altoom on 01/04/1445 AH.
//

import SwiftUI

struct FormPage: View {
    
    @State private var selectedButtons: Set<Int> = []
      @State private var textInput = ""
      @State private var selectedDate = Date()
    
      @State private var isPressed = false
      
      // Define an array of texts for the buttons
      let buttonTitles: [String] = [
          "موالح", "عشاء", "قاعه", "حلويات", "ديكور",
          "كراسي", "طاولات", "مشروبات", "توزيعات", "عربات أكل",
          "قهوجيات", " صبابات "
      ]
      
      let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    var body: some View {
        NavigationStack{
            ZStack{
                // .navigationTitle("آضف لقائمتك")
                Color("Back")
                    .ignoresSafeArea()
                VStack{
                    VStack(alignment: .trailing){
                        Text("اضف لقائمتك")
                            .font(.custom("Tajawal", size: 20))
                            .bold()
                            .padding(.bottom, 25)
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(0..<buttonTitles.count) { index in
                                                    Button(action: {
                                                        if selectedButtons.contains(index) {
                                                            selectedButtons.remove(index)
                                                        } else {
                                                            selectedButtons.insert(index)
                                                        }
                                                    }) {
                                                        Text(buttonTitles[index])
                                                            .padding([.top, .bottom, .trailing], 5.0)
                                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                                            
                                                            .background(
                                                                RoundedRectangle(cornerRadius: 6)
                                                                    .stroke(selectedButtons.contains(index) ? Color.C: Color.gray, lineWidth: 2)
                                                            )
                                                            .foregroundColor(selectedButtons.contains(index) ? Color.C : Color.gray) // Set the text and border color
                                                            .font(.custom("Tajawal", size: 15))
                                                            
                                                            .cornerRadius(6)
                                                    }
                                                }
                                            }

                        .padding(.bottom, 25)
        
                        Text("اسم المناسبة")
                            .bold()
                            .font(.custom("Tajawal", size: 20))
                            .font(.headline)
                            TextField("", text: $textInput)
                            .frame(height: 20) // Set the desired height here
                            .padding() // Add padding if needed
                            .background(Color.white) // Set background color
                            .cornerRadius(10) // Apply corner radius for rounded corners
                            
                            
                   
                        
                            .padding(.bottom, 25)
                        
                        Text("تاريخ مناسبتك")
                            .font(.custom("Tajawal", size: 20))
                            .bold()
                            .font(.headline)
                        DatePicker("", selection: $selectedDate, in: Date()..., displayedComponents: .date)
                            .datePickerStyle(.wheel)
                            .bold()
                          
                            
                        
                        
            
                        
                        
                    }  .padding(.bottom, 25)
                   
                    NavigationLink(destination: ListTask()) {
                        Text("التالي")
                            .font(.custom("Tajawal", size: 25))
                            .bold()
                            .frame(width: 200, height: 50)
                            .background(Color.C) // Set the background color to red
                            .foregroundColor(.white) // Set the text color to white
                            .cornerRadius(10) // Add some corner radius for a rounded look
                    }
                   
                    
                }.padding()
                
            }
           
            .navigationTitle(Text("خطط لمناسبتك"))
            .font(.custom("Tajawal", size: 15))
            .navigationBarTitleDisplayMode(.inline)
            
        }
        }
    }

#Preview {
    FormPage()
}
