//
//  GreeterClient.swift
//  gRPC-client
//
//  Created by 伊藤凌也 on 2019/12/27.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import GRPC
import NIO

struct GreeterClient {
    var client: Greeter_GreeterServiceClient = {
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let configuration = ClientConnection.Configuration(
            target: .hostAndPort("localhost", 6565),
            eventLoopGroup: group)
        let connection = ClientConnection(configuration: configuration)

        return Greeter_GreeterServiceClient(connection: connection)
    }()
}
