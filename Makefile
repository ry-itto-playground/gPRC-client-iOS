export PATH += :$(PWD)/grpc-swift
capibara:
	protoc capibara.proto\
	    --proto_path=gPRC-server-java/src/main/proto/ \
	    --grpc-swift_out=./gRPC-client\
	    --swift_out=./gRPC-client
