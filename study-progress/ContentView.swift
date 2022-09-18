//
//  ContentView.swift
//  study-progress
//
//  Created by 佐藤碧 on 2022/09/18.
//

import SwiftUI

var book1 = Book(title: "book1", author: "A")
var book2 = Book(title: "book2", author: "B")
let books: [Book] = [book1, book2]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(books, id: \.self) { book in
                    NavigationLink(destination: BookView(book: book)) {
                        Text(book.title)
                    }
                            .navigationBarTitle("books")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
