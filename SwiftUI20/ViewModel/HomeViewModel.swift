//
//  HomeViewModel.swift
//  SwiftUI20
//
//  Created by Rohit Saini on 25/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import Foundation
import Firebase

class HomeViewModel: ObservableObject{
    @Published var stories = [Story]()
    
    init(){
        let db = Firestore.firestore()
        db.collection("stories").addSnapshotListener { (snaps, err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
            for snap in snaps!.documentChanges{
                if snap.type == .added{
                    let id = snap.document.documentID
                    let name = snap.document.get("name") as! String
                    let storyPic = snap.document.get("storyPic") as! String
                    self.stories.append(Story(id: id, name: name, storyPic: storyPic))
                }
            }
        }
    }
    
    func addStory(name:String,storyPic:UIImage){
        let db = Firestore.firestore()
        db.collection("stories").addDocument(data: ["name":name,"storyPic":""]) { (err) in
            if err != nil{
                print(err!.localizedDescription)
                return
            }
            print("Story added successfully!")
        }
    }

}
