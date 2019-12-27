//
//  CapibaraClient.swift
//  gRPC-client
//
//  Created by 伊藤凌也 on 2019/12/22.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import NIO
import GRPC

struct CapibaraClient {
    let client: Capibara_CapybaraServiceClient = {
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        let configuration = ClientConnection.Configuration(
            target: .hostAndPort("localhost", 6565),
            eventLoopGroup: group)
        let connection = ClientConnection(configuration: configuration)

        return Capibara_CapybaraServiceClient(connection: connection)
    }()
}
