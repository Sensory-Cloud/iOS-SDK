//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: v1/file/file.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Handles all file-related functions
///
/// Usage: instantiate `Sensory_Api_V1_File_FileClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_File_FileClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? { get }

  func getInfo(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo>

  func getCatalog(
    _ request: Sensory_Api_V1_File_FileCatalogRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>

  func getCompleteCatalog(
    _ request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>

  func download(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions?,
    handler: @escaping (Sensory_Api_V1_File_FileResponse) -> Void
  ) -> ServerStreamingCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse>
}

extension Sensory_Api_V1_File_FileClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.file.File"
  }

  /// Allows a client to request information about a file in the cloud.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInfo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getInfo(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInfoInterceptors() ?? []
    )
  }

  /// Allows a client to request a list of all the files it is allowed to access
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCatalog.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCatalog(
    _ request: Sensory_Api_V1_File_FileCatalogRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCatalogInterceptors() ?? []
    )
  }

  /// Allows a root client to request the full list of files
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCompleteCatalog.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCompleteCatalog(
    _ request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompleteCatalogInterceptors() ?? []
    )
  }

  /// Allows a client to request a file from the cloud.
  /// Download streams a FileResponse until the entire file is downloaded
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to Download.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func download(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Sensory_Api_V1_File_FileResponse) -> Void
  ) -> ServerStreamingCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse> {
    return self.makeServerStreamingCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.download.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDownloadInterceptors() ?? [],
      handler: handler
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Sensory_Api_V1_File_FileClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Sensory_Api_V1_File_FileNIOClient")
public final class Sensory_Api_V1_File_FileClient: Sensory_Api_V1_File_FileClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the sensory.api.v1.file.File service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Sensory_Api_V1_File_FileNIOClient: Sensory_Api_V1_File_FileClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.file.File service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Handles all file-related functions
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_V1_File_FileAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? { get }

  func makeGetInfoCall(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo>

  func makeGetCatalogCall(
    _ request: Sensory_Api_V1_File_FileCatalogRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>

  func makeGetCompleteCatalogCall(
    _ request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>

  func makeDownloadCall(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_File_FileAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_V1_File_FileClientMetadata.serviceDescriptor
  }

  public var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetInfoCall(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInfoInterceptors() ?? []
    )
  }

  public func makeGetCatalogCall(
    _ request: Sensory_Api_V1_File_FileCatalogRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCatalogInterceptors() ?? []
    )
  }

  public func makeGetCompleteCatalogCall(
    _ request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompleteCatalogInterceptors() ?? []
    )
  }

  public func makeDownloadCall(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse> {
    return self.makeAsyncServerStreamingCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.download.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDownloadInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_File_FileAsyncClientProtocol {
  public func getInfo(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_File_FileInfo {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInfoInterceptors() ?? []
    )
  }

  public func getCatalog(
    _ request: Sensory_Api_V1_File_FileCatalogRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_File_FileCatalogResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCatalogInterceptors() ?? []
    )
  }

  public func getCompleteCatalog(
    _ request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_File_FileCatalogResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetCompleteCatalogInterceptors() ?? []
    )
  }

  public func download(
    _ request: Sensory_Api_V1_File_FileRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Sensory_Api_V1_File_FileResponse> {
    return self.performAsyncServerStreamingCall(
      path: Sensory_Api_V1_File_FileClientMetadata.Methods.download.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDownloadInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Sensory_Api_V1_File_FileAsyncClient: Sensory_Api_V1_File_FileAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getInfo'.
  func makeGetInfoInterceptors() -> [ClientInterceptor<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo>]

  /// - Returns: Interceptors to use when invoking 'getCatalog'.
  func makeGetCatalogInterceptors() -> [ClientInterceptor<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>]

  /// - Returns: Interceptors to use when invoking 'getCompleteCatalog'.
  func makeGetCompleteCatalogInterceptors() -> [ClientInterceptor<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>]

  /// - Returns: Interceptors to use when invoking 'download'.
  func makeDownloadInterceptors() -> [ClientInterceptor<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse>]
}

public enum Sensory_Api_V1_File_FileClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "File",
    fullName: "sensory.api.v1.file.File",
    methods: [
      Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo,
      Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog,
      Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog,
      Sensory_Api_V1_File_FileClientMetadata.Methods.download,
    ]
  )

  public enum Methods {
    public static let getInfo = GRPCMethodDescriptor(
      name: "GetInfo",
      path: "/sensory.api.v1.file.File/GetInfo",
      type: GRPCCallType.unary
    )

    public static let getCatalog = GRPCMethodDescriptor(
      name: "GetCatalog",
      path: "/sensory.api.v1.file.File/GetCatalog",
      type: GRPCCallType.unary
    )

    public static let getCompleteCatalog = GRPCMethodDescriptor(
      name: "GetCompleteCatalog",
      path: "/sensory.api.v1.file.File/GetCompleteCatalog",
      type: GRPCCallType.unary
    )

    public static let download = GRPCMethodDescriptor(
      name: "Download",
      path: "/sensory.api.v1.file.File/Download",
      type: GRPCCallType.serverStreaming
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Sensory_Api_V1_File_FileTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Sensory_Api_V1_File_FileTestClient: Sensory_Api_V1_File_FileClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_File_FileClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the GetInfo RPC. This must be called
  /// before calling 'getInfo'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetInfoResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo.path, requestHandler: requestHandler)
  }

  public func enqueueGetInfoResponse(
    _ response: Sensory_Api_V1_File_FileInfo,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetInfoResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetInfo'
  public var hasGetInfoResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_File_FileClientMetadata.Methods.getInfo.path)
  }

  /// Make a unary response for the GetCatalog RPC. This must be called
  /// before calling 'getCatalog'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetCatalogResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileCatalogRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog.path, requestHandler: requestHandler)
  }

  public func enqueueGetCatalogResponse(
    _ response: Sensory_Api_V1_File_FileCatalogResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileCatalogRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetCatalogResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetCatalog'
  public var hasGetCatalogResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_File_FileClientMetadata.Methods.getCatalog.path)
  }

  /// Make a unary response for the GetCompleteCatalog RPC. This must be called
  /// before calling 'getCompleteCatalog'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetCompleteCatalogResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileCompleteCatalogRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog.path, requestHandler: requestHandler)
  }

  public func enqueueGetCompleteCatalogResponse(
    _ response: Sensory_Api_V1_File_FileCatalogResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileCompleteCatalogRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetCompleteCatalogResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetCompleteCatalog'
  public var hasGetCompleteCatalogResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_File_FileClientMetadata.Methods.getCompleteCatalog.path)
  }

  /// Make a streaming response for the Download RPC. This must be called
  /// before calling 'download'. See also 'FakeStreamingResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDownloadResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileRequest>) -> () = { _ in }
  ) -> FakeStreamingResponse<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse> {
    return self.fakeChannel.makeFakeStreamingResponse(path: Sensory_Api_V1_File_FileClientMetadata.Methods.download.path, requestHandler: requestHandler)
  }

  public func enqueueDownloadResponses(
    _ responses: [Sensory_Api_V1_File_FileResponse],
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_File_FileRequest>) -> () = { _ in }
  ) {
    let stream = self.makeDownloadResponseStream(requestHandler)
    // These are the only operation on the stream; try! is fine.
    responses.forEach { try! stream.sendMessage($0) }
    try! stream.sendEnd()
  }

  /// Returns true if there are response streams enqueued for 'Download'
  public var hasDownloadResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_File_FileClientMetadata.Methods.download.path)
  }
}

/// Handles all file-related functions
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Sensory_Api_V1_File_FileProvider: CallHandlerProvider {
  var interceptors: Sensory_Api_V1_File_FileServerInterceptorFactoryProtocol? { get }

  /// Allows a client to request information about a file in the cloud.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func getInfo(request: Sensory_Api_V1_File_FileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_V1_File_FileInfo>

  /// Allows a client to request a list of all the files it is allowed to access
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func getCatalog(request: Sensory_Api_V1_File_FileCatalogRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_V1_File_FileCatalogResponse>

  /// Allows a root client to request the full list of files
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func getCompleteCatalog(request: Sensory_Api_V1_File_FileCompleteCatalogRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_V1_File_FileCatalogResponse>

  /// Allows a client to request a file from the cloud.
  /// Download streams a FileResponse until the entire file is downloaded
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func download(request: Sensory_Api_V1_File_FileRequest, context: StreamingResponseCallContext<Sensory_Api_V1_File_FileResponse>) -> EventLoopFuture<GRPCStatus>
}

extension Sensory_Api_V1_File_FileProvider {
  public var serviceName: Substring {
    return Sensory_Api_V1_File_FileServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetInfo":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileInfo>(),
        interceptors: self.interceptors?.makeGetInfoInterceptors() ?? [],
        userFunction: self.getInfo(request:context:)
      )

    case "GetCatalog":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileCatalogRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileCatalogResponse>(),
        interceptors: self.interceptors?.makeGetCatalogInterceptors() ?? [],
        userFunction: self.getCatalog(request:context:)
      )

    case "GetCompleteCatalog":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileCompleteCatalogRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileCatalogResponse>(),
        interceptors: self.interceptors?.makeGetCompleteCatalogInterceptors() ?? [],
        userFunction: self.getCompleteCatalog(request:context:)
      )

    case "Download":
      return ServerStreamingServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileResponse>(),
        interceptors: self.interceptors?.makeDownloadInterceptors() ?? [],
        userFunction: self.download(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// Handles all file-related functions
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_V1_File_FileAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_V1_File_FileServerInterceptorFactoryProtocol? { get }

  /// Allows a client to request information about a file in the cloud.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func getInfo(
    request: Sensory_Api_V1_File_FileRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_V1_File_FileInfo

  /// Allows a client to request a list of all the files it is allowed to access
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func getCatalog(
    request: Sensory_Api_V1_File_FileCatalogRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_V1_File_FileCatalogResponse

  /// Allows a root client to request the full list of files
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func getCompleteCatalog(
    request: Sensory_Api_V1_File_FileCompleteCatalogRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_V1_File_FileCatalogResponse

  /// Allows a client to request a file from the cloud.
  /// Download streams a FileResponse until the entire file is downloaded
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func download(
    request: Sensory_Api_V1_File_FileRequest,
    responseStream: GRPCAsyncResponseStreamWriter<Sensory_Api_V1_File_FileResponse>,
    context: GRPCAsyncServerCallContext
  ) async throws
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_File_FileAsyncProvider {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_V1_File_FileServerMetadata.serviceDescriptor
  }

  public var serviceName: Substring {
    return Sensory_Api_V1_File_FileServerMetadata.serviceDescriptor.fullName[...]
  }

  public var interceptors: Sensory_Api_V1_File_FileServerInterceptorFactoryProtocol? {
    return nil
  }

  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetInfo":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileInfo>(),
        interceptors: self.interceptors?.makeGetInfoInterceptors() ?? [],
        wrapping: self.getInfo(request:context:)
      )

    case "GetCatalog":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileCatalogRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileCatalogResponse>(),
        interceptors: self.interceptors?.makeGetCatalogInterceptors() ?? [],
        wrapping: self.getCatalog(request:context:)
      )

    case "GetCompleteCatalog":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileCompleteCatalogRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileCatalogResponse>(),
        interceptors: self.interceptors?.makeGetCompleteCatalogInterceptors() ?? [],
        wrapping: self.getCompleteCatalog(request:context:)
      )

    case "Download":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_V1_File_FileRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_V1_File_FileResponse>(),
        interceptors: self.interceptors?.makeDownloadInterceptors() ?? [],
        wrapping: self.download(request:responseStream:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

public protocol Sensory_Api_V1_File_FileServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getInfo'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetInfoInterceptors() -> [ServerInterceptor<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileInfo>]

  /// - Returns: Interceptors to use when handling 'getCatalog'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetCatalogInterceptors() -> [ServerInterceptor<Sensory_Api_V1_File_FileCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>]

  /// - Returns: Interceptors to use when handling 'getCompleteCatalog'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetCompleteCatalogInterceptors() -> [ServerInterceptor<Sensory_Api_V1_File_FileCompleteCatalogRequest, Sensory_Api_V1_File_FileCatalogResponse>]

  /// - Returns: Interceptors to use when handling 'download'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDownloadInterceptors() -> [ServerInterceptor<Sensory_Api_V1_File_FileRequest, Sensory_Api_V1_File_FileResponse>]
}

public enum Sensory_Api_V1_File_FileServerMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "File",
    fullName: "sensory.api.v1.file.File",
    methods: [
      Sensory_Api_V1_File_FileServerMetadata.Methods.getInfo,
      Sensory_Api_V1_File_FileServerMetadata.Methods.getCatalog,
      Sensory_Api_V1_File_FileServerMetadata.Methods.getCompleteCatalog,
      Sensory_Api_V1_File_FileServerMetadata.Methods.download,
    ]
  )

  public enum Methods {
    public static let getInfo = GRPCMethodDescriptor(
      name: "GetInfo",
      path: "/sensory.api.v1.file.File/GetInfo",
      type: GRPCCallType.unary
    )

    public static let getCatalog = GRPCMethodDescriptor(
      name: "GetCatalog",
      path: "/sensory.api.v1.file.File/GetCatalog",
      type: GRPCCallType.unary
    )

    public static let getCompleteCatalog = GRPCMethodDescriptor(
      name: "GetCompleteCatalog",
      path: "/sensory.api.v1.file.File/GetCompleteCatalog",
      type: GRPCCallType.unary
    )

    public static let download = GRPCMethodDescriptor(
      name: "Download",
      path: "/sensory.api.v1.file.File/Download",
      type: GRPCCallType.serverStreaming
    )
  }
}
