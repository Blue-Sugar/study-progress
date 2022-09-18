//
//  ContentView.swift
//  study-progress
//
//  Created by 佐藤碧 on 2022/09/18.
//

import SwiftUI

let books = ["book1", "book2"]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(books, id: \.self) { book in
                    NavigationLink(destination: BookView(name: book)) {
                        Text(book)
                    }
                            .navigationBarTitle("books")
                }
            }
        }
    }
}

struct BookView: View {
    var name = "hello"
    var body: some View {
        Text("\(name)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
