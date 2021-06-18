//
//  ContentView.swift
//  HackerNews
//
//  Created by Randy Crossley on 6/18/21.
//  This app was built using SwiftUI, Combine and Web API.
//  I learned how to build this app from Mohammad Azam on Udemy, whom used the
//  Combine: Asynchronous Programming with Swift book.
//

import SwiftUI

struct StoryListView: View {
    
    @ObservedObject private var storyListVM = StoryListViewModel()
    
    var body: some View {
        NavigationView {
            
            List(self.storyListVM.stories, id: \.id) { storyVM in
                NavigationLink(destination: StoryDetailView(storyId: storyVM.id)) {
                    Text("\(storyVM.title)")
                }
            }
            
        .navigationBarTitle("Hacker News")
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}
