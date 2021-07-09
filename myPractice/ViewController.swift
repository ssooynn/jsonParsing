//
//  ViewController.swift
//  myPractice
//
//  Created by 이수연 on 2021/07/05.
//

import UIKit
import Foundation


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    @IBOutlet weak var tableView: UIView!
    override func viewDidLoad() {
        
        if let url = URL(string: "https://api.odcloud.kr/api/apnmOrg/v1/list?page=1&perPage=10&serviceKey=OmKgGDVqwbySrZ6%2FXD%2F4NdIhnpsxgCzypX9w%2FLBRQX7IF2vPLWcSrrpNeCKFJ9U9ZJd%2BMjOZm9XDzwd1Sg1uUA%3D%3D") {
            let request = URLRequest.init(url: url)
            
            URLSession.shared.dataTask(with: request) {
                (data, response, error) in guard let data = data else {return}
                let decoder = JSONDecoder()
                print(response as Any)
                do{ let json = try decoder.decode(hospitalData.self , from: data)
            
                }
                catch{
                    print(error)
                }
                
            }.resume()
            
        super.viewDidLoad()
            tab
        // Do any additional setup after loading the view.
    }
        
    }
}

