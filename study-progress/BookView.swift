//
// Created by 佐藤碧 on 2022/09/18.
//

import SwiftUI

struct Book {
    let title: String
    let author: String
    var sectionNum: Int = 10
    var sectionDetail: [(Int, String)] = Array(repeating: (2, "good"), count: 10)
}
extension Book: Hashable {
    static func ==(lhs: Book, rhs: Book) -> Bool {
        lhs.title == rhs.title && lhs.author == rhs.author
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(author)
    }
}

struct BookView: View {
    var book = Book(title: "no book", author: "no author")
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(1 ... book.sectionNum, id: \.self) { section in
                        NavigationLink(destination: SectionView(book: book, section: section)) {
                            HStack {
                                Spacer()
                                Text("section \(section)")
                                Spacer()
                                ForEach(1...2, id: \.self) { _ in
                                    Image(systemName: "star.fill")
                                }
                                ForEach(2..<5, id: \.self) { _ in
                                    Image(systemName: "star")
                                }
                                Spacer()
                            }
                        }
                                .navigationBarTitle(book.title)
                    }
                }
            }
        }
    }
}

struct SectionView : View {
    var book = Book(title: "no book", author: "no author")
    var section = 1
    var body: some View {
        Text(book.sectionDetail[section].1)
    }
}