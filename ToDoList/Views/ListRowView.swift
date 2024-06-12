//
//  ListRowView.swift
//  Todo
//
//  Created by krishna on 05/06/24.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    @State private var isDone: Bool = false
    var body: some View {
        HStack{
            Image(systemName: isDone ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(isDone ? .blue : .primary)
            Text(title)
            Spacer()
            if(!isDone){
                Button(action: {
                    isDone.toggle()
                }){
                    Text("markAsDone")
                        .font(.system(size: 14))
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
            }
        }
        .padding(.vertical,5)
        .padding(.horizontal)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This  is the first title")
    }
}
