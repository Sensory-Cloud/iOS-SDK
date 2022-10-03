//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: oauth/oauth.proto
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


/// Service for OAuth function
///
/// Usage: instantiate `Sensory_Api_Oauth_OauthServiceClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_Oauth_OauthServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? { get }

  func getToken(
    _ request: Sensory_Api_Oauth_TokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse>

  func signToken(
    _ request: Sensory_Api_Oauth_SignTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse>

  func getWhoAmI(
    _ request: Sensory_Api_Oauth_WhoAmIRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse>

  func getPublicKey(
    _ request: Sensory_Api_Oauth_PublicKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse>
}

extension Sensory_Api_Oauth_OauthServiceClientProtocol {
  public var serviceName: String {
    return "sensory.api.oauth.OauthService"
  }

  /// Obtain an OAuth token for the given credentials
  /// Endpoint does not require an authorization token
  ///
  /// - Parameters:
  ///   - request: Request to send to GetToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getToken(
    _ request: Sensory_Api_Oauth_TokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTokenInterceptors() ?? []
    )
  }

  /// Sign and return an OAuth token. The passed authorization token must have the SignToken authority.
  /// Therefore, Devices are not allowed to make this request.
  /// Sign does not validate credentials, and therefore should be used in specific circumstances where credentials are not required.
  /// One common usecase for the Sign request is an Io server issuing a user-scoped token after a successful authentication.
  /// Only a limited subset of of scopes may be requested from the SignToken request.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to SignToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signToken(
    _ request: Sensory_Api_Oauth_SignTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSignTokenInterceptors() ?? []
    )
  }

  /// Obtain information about oneself based on the passed OAuth token
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWhoAmI.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWhoAmI(
    _ request: Sensory_Api_Oauth_WhoAmIRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  /// Retrieve a public key by ID. Public keys retrieved by this endpoint can be used
  /// to validate tokens signed by the Sensory cloud.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPublicKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPublicKey(
    _ request: Sensory_Api_Oauth_PublicKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPublicKeyInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Sensory_Api_Oauth_OauthServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Sensory_Api_Oauth_OauthServiceNIOClient")
public final class Sensory_Api_Oauth_OauthServiceClient: Sensory_Api_Oauth_OauthServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the sensory.api.oauth.OauthService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Sensory_Api_Oauth_OauthServiceNIOClient: Sensory_Api_Oauth_OauthServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.oauth.OauthService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Service for OAuth function
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_Oauth_OauthServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? { get }

  func makeGetTokenCall(
    _ request: Sensory_Api_Oauth_TokenRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse>

  func makeSignTokenCall(
    _ request: Sensory_Api_Oauth_SignTokenRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse>

  func makeGetWhoAmICall(
    _ request: Sensory_Api_Oauth_WhoAmIRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse>

  func makeGetPublicKeyCall(
    _ request: Sensory_Api_Oauth_PublicKeyRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_Oauth_OauthServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_Oauth_OauthServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetTokenCall(
    _ request: Sensory_Api_Oauth_TokenRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTokenInterceptors() ?? []
    )
  }

  public func makeSignTokenCall(
    _ request: Sensory_Api_Oauth_SignTokenRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSignTokenInterceptors() ?? []
    )
  }

  public func makeGetWhoAmICall(
    _ request: Sensory_Api_Oauth_WhoAmIRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  public func makeGetPublicKeyCall(
    _ request: Sensory_Api_Oauth_PublicKeyRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPublicKeyInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_Oauth_OauthServiceAsyncClientProtocol {
  public func getToken(
    _ request: Sensory_Api_Oauth_TokenRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_Common_TokenResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetTokenInterceptors() ?? []
    )
  }

  public func signToken(
    _ request: Sensory_Api_Oauth_SignTokenRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_Common_TokenResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSignTokenInterceptors() ?? []
    )
  }

  public func getWhoAmI(
    _ request: Sensory_Api_Oauth_WhoAmIRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_Oauth_WhoAmIResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  public func getPublicKey(
    _ request: Sensory_Api_Oauth_PublicKeyRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_Oauth_PublicKeyResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPublicKeyInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Sensory_Api_Oauth_OauthServiceAsyncClient: Sensory_Api_Oauth_OauthServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getToken'.
  func makeGetTokenInterceptors() -> [ClientInterceptor<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse>]

  /// - Returns: Interceptors to use when invoking 'signToken'.
  func makeSignTokenInterceptors() -> [ClientInterceptor<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse>]

  /// - Returns: Interceptors to use when invoking 'getWhoAmI'.
  func makeGetWhoAmIInterceptors() -> [ClientInterceptor<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse>]

  /// - Returns: Interceptors to use when invoking 'getPublicKey'.
  func makeGetPublicKeyInterceptors() -> [ClientInterceptor<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse>]
}

public enum Sensory_Api_Oauth_OauthServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "OauthService",
    fullName: "sensory.api.oauth.OauthService",
    methods: [
      Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken,
      Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken,
      Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI,
      Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey,
    ]
  )

  public enum Methods {
    public static let getToken = GRPCMethodDescriptor(
      name: "GetToken",
      path: "/sensory.api.oauth.OauthService/GetToken",
      type: GRPCCallType.unary
    )

    public static let signToken = GRPCMethodDescriptor(
      name: "SignToken",
      path: "/sensory.api.oauth.OauthService/SignToken",
      type: GRPCCallType.unary
    )

    public static let getWhoAmI = GRPCMethodDescriptor(
      name: "GetWhoAmI",
      path: "/sensory.api.oauth.OauthService/GetWhoAmI",
      type: GRPCCallType.unary
    )

    public static let getPublicKey = GRPCMethodDescriptor(
      name: "GetPublicKey",
      path: "/sensory.api.oauth.OauthService/GetPublicKey",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Sensory_Api_Oauth_OauthServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Sensory_Api_Oauth_OauthServiceTestClient: Sensory_Api_Oauth_OauthServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_Oauth_OauthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the GetToken RPC. This must be called
  /// before calling 'getToken'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetTokenResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_TokenRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken.path, requestHandler: requestHandler)
  }

  public func enqueueGetTokenResponse(
    _ response: Sensory_Api_Common_TokenResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_TokenRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetTokenResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetToken'
  public var hasGetTokenResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getToken.path)
  }

  /// Make a unary response for the SignToken RPC. This must be called
  /// before calling 'signToken'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeSignTokenResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_SignTokenRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken.path, requestHandler: requestHandler)
  }

  public func enqueueSignTokenResponse(
    _ response: Sensory_Api_Common_TokenResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_SignTokenRequest>) -> () = { _ in }
  ) {
    let stream = self.makeSignTokenResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'SignToken'
  public var hasSignTokenResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.signToken.path)
  }

  /// Make a unary response for the GetWhoAmI RPC. This must be called
  /// before calling 'getWhoAmI'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetWhoAmIResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_WhoAmIRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI.path, requestHandler: requestHandler)
  }

  public func enqueueGetWhoAmIResponse(
    _ response: Sensory_Api_Oauth_WhoAmIResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_WhoAmIRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetWhoAmIResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetWhoAmI'
  public var hasGetWhoAmIResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getWhoAmI.path)
  }

  /// Make a unary response for the GetPublicKey RPC. This must be called
  /// before calling 'getPublicKey'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetPublicKeyResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_PublicKeyRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey.path, requestHandler: requestHandler)
  }

  public func enqueueGetPublicKeyResponse(
    _ response: Sensory_Api_Oauth_PublicKeyResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_Oauth_PublicKeyRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetPublicKeyResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetPublicKey'
  public var hasGetPublicKeyResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_Oauth_OauthServiceClientMetadata.Methods.getPublicKey.path)
  }
}

/// Service for OAuth function
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Sensory_Api_Oauth_OauthServiceProvider: CallHandlerProvider {
  var interceptors: Sensory_Api_Oauth_OauthServiceServerInterceptorFactoryProtocol? { get }

  /// Obtain an OAuth token for the given credentials
  /// Endpoint does not require an authorization token
  func getToken(request: Sensory_Api_Oauth_TokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_Common_TokenResponse>

  /// Sign and return an OAuth token. The passed authorization token must have the SignToken authority.
  /// Therefore, Devices are not allowed to make this request.
  /// Sign does not validate credentials, and therefore should be used in specific circumstances where credentials are not required.
  /// One common usecase for the Sign request is an Io server issuing a user-scoped token after a successful authentication.
  /// Only a limited subset of of scopes may be requested from the SignToken request.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func signToken(request: Sensory_Api_Oauth_SignTokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_Common_TokenResponse>

  /// Obtain information about oneself based on the passed OAuth token
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  func getWhoAmI(request: Sensory_Api_Oauth_WhoAmIRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_Oauth_WhoAmIResponse>

  /// Retrieve a public key by ID. Public keys retrieved by this endpoint can be used
  /// to validate tokens signed by the Sensory cloud.
  func getPublicKey(request: Sensory_Api_Oauth_PublicKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Sensory_Api_Oauth_PublicKeyResponse>
}

extension Sensory_Api_Oauth_OauthServiceProvider {
  public var serviceName: Substring {
    return Sensory_Api_Oauth_OauthServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetToken":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_TokenRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Common_TokenResponse>(),
        interceptors: self.interceptors?.makeGetTokenInterceptors() ?? [],
        userFunction: self.getToken(request:context:)
      )

    case "SignToken":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_SignTokenRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Common_TokenResponse>(),
        interceptors: self.interceptors?.makeSignTokenInterceptors() ?? [],
        userFunction: self.signToken(request:context:)
      )

    case "GetWhoAmI":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_WhoAmIRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Oauth_WhoAmIResponse>(),
        interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? [],
        userFunction: self.getWhoAmI(request:context:)
      )

    case "GetPublicKey":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_PublicKeyRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Oauth_PublicKeyResponse>(),
        interceptors: self.interceptors?.makeGetPublicKeyInterceptors() ?? [],
        userFunction: self.getPublicKey(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// Service for OAuth function
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_Oauth_OauthServiceAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_Oauth_OauthServiceServerInterceptorFactoryProtocol? { get }

  /// Obtain an OAuth token for the given credentials
  /// Endpoint does not require an authorization token
  @Sendable func getToken(
    request: Sensory_Api_Oauth_TokenRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_Common_TokenResponse

  /// Sign and return an OAuth token. The passed authorization token must have the SignToken authority.
  /// Therefore, Devices are not allowed to make this request.
  /// Sign does not validate credentials, and therefore should be used in specific circumstances where credentials are not required.
  /// One common usecase for the Sign request is an Io server issuing a user-scoped token after a successful authentication.
  /// Only a limited subset of of scopes may be requested from the SignToken request.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func signToken(
    request: Sensory_Api_Oauth_SignTokenRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_Common_TokenResponse

  /// Obtain information about oneself based on the passed OAuth token
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  @Sendable func getWhoAmI(
    request: Sensory_Api_Oauth_WhoAmIRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_Oauth_WhoAmIResponse

  /// Retrieve a public key by ID. Public keys retrieved by this endpoint can be used
  /// to validate tokens signed by the Sensory cloud.
  @Sendable func getPublicKey(
    request: Sensory_Api_Oauth_PublicKeyRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Sensory_Api_Oauth_PublicKeyResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_Oauth_OauthServiceAsyncProvider {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_Oauth_OauthServiceServerMetadata.serviceDescriptor
  }

  public var serviceName: Substring {
    return Sensory_Api_Oauth_OauthServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  public var interceptors: Sensory_Api_Oauth_OauthServiceServerInterceptorFactoryProtocol? {
    return nil
  }

  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetToken":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_TokenRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Common_TokenResponse>(),
        interceptors: self.interceptors?.makeGetTokenInterceptors() ?? [],
        wrapping: self.getToken(request:context:)
      )

    case "SignToken":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_SignTokenRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Common_TokenResponse>(),
        interceptors: self.interceptors?.makeSignTokenInterceptors() ?? [],
        wrapping: self.signToken(request:context:)
      )

    case "GetWhoAmI":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_WhoAmIRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Oauth_WhoAmIResponse>(),
        interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? [],
        wrapping: self.getWhoAmI(request:context:)
      )

    case "GetPublicKey":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Sensory_Api_Oauth_PublicKeyRequest>(),
        responseSerializer: ProtobufSerializer<Sensory_Api_Oauth_PublicKeyResponse>(),
        interceptors: self.interceptors?.makeGetPublicKeyInterceptors() ?? [],
        wrapping: self.getPublicKey(request:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

public protocol Sensory_Api_Oauth_OauthServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getToken'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetTokenInterceptors() -> [ServerInterceptor<Sensory_Api_Oauth_TokenRequest, Sensory_Api_Common_TokenResponse>]

  /// - Returns: Interceptors to use when handling 'signToken'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSignTokenInterceptors() -> [ServerInterceptor<Sensory_Api_Oauth_SignTokenRequest, Sensory_Api_Common_TokenResponse>]

  /// - Returns: Interceptors to use when handling 'getWhoAmI'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetWhoAmIInterceptors() -> [ServerInterceptor<Sensory_Api_Oauth_WhoAmIRequest, Sensory_Api_Oauth_WhoAmIResponse>]

  /// - Returns: Interceptors to use when handling 'getPublicKey'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetPublicKeyInterceptors() -> [ServerInterceptor<Sensory_Api_Oauth_PublicKeyRequest, Sensory_Api_Oauth_PublicKeyResponse>]
}

public enum Sensory_Api_Oauth_OauthServiceServerMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "OauthService",
    fullName: "sensory.api.oauth.OauthService",
    methods: [
      Sensory_Api_Oauth_OauthServiceServerMetadata.Methods.getToken,
      Sensory_Api_Oauth_OauthServiceServerMetadata.Methods.signToken,
      Sensory_Api_Oauth_OauthServiceServerMetadata.Methods.getWhoAmI,
      Sensory_Api_Oauth_OauthServiceServerMetadata.Methods.getPublicKey,
    ]
  )

  public enum Methods {
    public static let getToken = GRPCMethodDescriptor(
      name: "GetToken",
      path: "/sensory.api.oauth.OauthService/GetToken",
      type: GRPCCallType.unary
    )

    public static let signToken = GRPCMethodDescriptor(
      name: "SignToken",
      path: "/sensory.api.oauth.OauthService/SignToken",
      type: GRPCCallType.unary
    )

    public static let getWhoAmI = GRPCMethodDescriptor(
      name: "GetWhoAmI",
      path: "/sensory.api.oauth.OauthService/GetWhoAmI",
      type: GRPCCallType.unary
    )

    public static let getPublicKey = GRPCMethodDescriptor(
      name: "GetPublicKey",
      path: "/sensory.api.oauth.OauthService/GetPublicKey",
      type: GRPCCallType.unary
    )
  }
}
