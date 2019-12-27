//
//  ViewController.swift
//  gRPC-client
//
//  Created by 伊藤凌也 on 2019/12/22.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let client = GreeterClient()
        let request = Greeter_HelloRequest.with {
            $0.name = ""
        }
        do {
            let response = try client.client.sayHello(request).response.wait()
            print(response)
        } catch let e {
            print(e.localizedDescription)
        }
    }
}

