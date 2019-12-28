//
//  ViewController.swift
//  gRPC-client
//
//  Created by 伊藤凌也 on 2019/12/22.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import GRPC
import NIO

class ViewController: UIViewController {

    let client: Greeter_GreeterServiceClient = {
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let configuration = ClientConnection.Configuration(
            target: .hostAndPort("localhost", 6565),
            eventLoopGroup: group)
        let connection = ClientConnection(configuration: configuration)
        return Greeter_GreeterServiceClient(connection: connection)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let request = Greeter_HelloRequest.with {
            $0.name = ""
        }
        do {
            let response = try client.sayHello(request).response.wait()
            print(response)
        } catch let e {
            print(e.localizedDescription)
        }
    }
}

