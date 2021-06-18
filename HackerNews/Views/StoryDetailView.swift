//
//  StoryDetailView.swift
//  HackerNews
//
//  Created by Randy Crossley on 6/18/21.
//  This app was built using SwiftUI, Combine and Web API.
//  I learned how to build this app from Mohammad Azam on Udemy, whom used the
//  Combine: Asynchronous Programming with Swift book.
//

import SwiftUI

struct StoryDetailView: View {
    
    @ObservedObject private var storyDetailVM: StoryDetailViewModel
    var storyId: Int
    
    init(storyId: Int) {
        self.storyId = storyId
        self.storyDetailVM = StoryDetailViewModel()
    }
    
    var body: some View {
        VStack {
            Text(self.storyDetailVM.title)
            Webview(url: self.storyDetailVM.url)
        }.onAppear {
            self.storyDetailVM.fetchStoryDetails(storyId: self.storyId)
        }
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 27541339)
    }
}
