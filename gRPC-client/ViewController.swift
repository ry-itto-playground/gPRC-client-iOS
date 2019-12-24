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
        let client = CapibaraClient()
        let request = Capibara_CapibaraRequest.with {
            $0.id = 1
        }
        do {
            let response = try client.client.getCapibaraInfo(request)
                .response.wait()
            print(response)
        } catch let e {
            print(e.localizedDescription)
        }
    }
    

}

