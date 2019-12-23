export PATH += :$(PWD)/grpc-swift
capibara:
	protoc capibara.proto\
	    --grpc-swift_out=./gRPC-client\
	    --swift_out=./gRPC-client
