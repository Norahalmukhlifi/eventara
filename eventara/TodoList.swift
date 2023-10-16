//
//  TodoList.swift
//  eventara
//
//  Created by NorahAlmukhlifi on 30/03/1445 AH.
//

import SwiftUI

struct TodoList: View {
    @State private var selectedItems: [String] = []
        let items = ["كيك", "زينه", "مشروبات", "عبايات تخرج", "حلويات"]
    var body: some View{
    
    List(items, id: \.self) { item in
        HStack {
            Image(systemName: self.selectedItems.contains(item) ? "checkmark.circle.fill" : "circle")
                
                .foregroundColor(.pink)
                .onTapGesture {
                    self.selectItem(item)
                }
            Spacer()
            Text(item)
        }
        .padding(.vertical, 10)
        .listRowSeparatorTint(.pink)
        .listRowBackground(Capsule().fill(.white)
            .padding(5))
        .listRowSeparator(.hidden)
    }

}
    
       

       func selectItem(_ item: String) {
           if selectedItems.contains(item) {
               selectedItems.removeAll(where: { $0 == item })
           } else {
               selectedItems.append(item)
           }
       }
   }

   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
          TodoList()
       }
   }



#Preview {
    TodoList()
}
