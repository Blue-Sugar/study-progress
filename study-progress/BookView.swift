//
// Created by 佐藤碧 on 2022/09/18.
//

import SwiftUI

struct Book: Hashable {
    let title: String
    let author: String
    var sectionNum: Int = 10
    var comment: String = ""
}

struct BookView: View {
    var book = Book(title: "no book", author: "no author")
    var body: some View {
        VStack {
            Text("\(book.title)")
            Text("\(book.author)")
            ForEach(1 ... book.sectionNum, id: \.self) { section in
                SectionView(num: section)
            }
        }
    }
}

struct SectionView: View {
    var num: Int = 1
    var body: some View {
        HStack {
            Text("section \(num)")
            ForEach(1 ... 2, id: \.self) { _ in
                Image(systemName: "star.fill")
            }
            ForEach(2 ..< 5, id: \.self) { _ in
                Image(systemName: "star")
            }
        }
    }
}