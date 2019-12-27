export PATH += :$(PWD)/grpc-swift
capibara:
	protoc capibara.proto\
	    --proto_path=gPRC-server-java/server/src/main/proto/ \
	    --grpc-swift_out=./gRPC-client\
	    --swift_out=./gRPC-client
hello:
	protoc hello.proto\
	    --proto_path=gPRC-server-java/server/src/main/proto/ \
	    --grpc-swift_out=./gRPC-client\
	    --swift_out=./gRPC-client
