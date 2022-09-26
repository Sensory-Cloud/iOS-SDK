//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: v1/event/event.proto
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


/// Service to publish events to the cloud
///
/// Usage: instantiate `Sensory_Api_V1_Event_EventServiceClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_Event_EventServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? { get }

  func publishUsageEvents(
    _ request: Sensory_Api_V1_Event_PublishUsageEventsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse>

  func getUsageEventList(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse>

  func getUsageEventSummary(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary>
}

extension Sensory_Api_V1_Event_EventServiceClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.event.EventService"
  }

  /// Publishes a list of usage event to the cloud
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishUsageEvents.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func publishUsageEvents(
    _ request: Sensory_Api_V1_Event_PublishUsageEventsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishUsageEventsInterceptors() ?? []
    )
  }

  /// Obtains a list of events given the filter criteria
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetUsageEventList.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getUsageEventList(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventListInterceptors() ?? []
    )
  }

  /// Obtains a summary of events given the filter critieria
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetUsageEventSummary.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getUsageEventSummary(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventSummaryInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Sensory_Api_V1_Event_EventServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Sensory_Api_V1_Event_EventServiceNIOClient")
public final class Sensory_Api_V1_Event_EventServiceClient: Sensory_Api_V1_Event_EventServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the sensory.api.v1.event.EventService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Sensory_Api_V1_Event_EventServiceNIOClient: Sensory_Api_V1_Event_EventServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.event.EventService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Service to publish events to the cloud
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_V1_Event_EventServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? { get }

  func makePublishUsageEventsCall(
    _ request: Sensory_Api_V1_Event_PublishUsageEventsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse>

  func makeGetUsageEventListCall(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse>

  func makeGetUsageEventSummaryCall(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_Event_EventServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_V1_Event_EventServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makePublishUsageEventsCall(
    _ request: Sensory_Api_V1_Event_PublishUsageEventsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishUsageEventsInterceptors() ?? []
    )
  }

  public func makeGetUsageEventListCall(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventListInterceptors() ?? []
    )
  }

  public func makeGetUsageEventSummaryCall(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventSummaryInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_Event_EventServiceAsyncClientProtocol {
  public func publishUsageEvents(
    _ request: Sensory_Api_V1_Event_PublishUsageEventsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Event_PublishUsageEventsResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishUsageEventsInterceptors() ?? []
    )
  }

  public func getUsageEventList(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Event_UsageEventListResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventListInterceptors() ?? []
    )
  }

  public func getUsageEventSummary(
    _ request: Sensory_Api_V1_Event_UsageEventListRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Event_UsageEventSummary {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetUsageEventSummaryInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Sensory_Api_V1_Event_EventServiceAsyncClient: Sensory_Api_V1_Event_EventServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'publishUsageEvents'.
  func makePublishUsageEventsInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse>]

  /// - Returns: Interceptors to use when invoking 'getUsageEventList'.
  func makeGetUsageEventListInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse>]

  /// - Returns: Interceptors to use when invoking 'getUsageEventSummary'.
  func makeGetUsageEventSummaryInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary>]
}

public enum Sensory_Api_V1_Event_EventServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "EventService",
    fullName: "sensory.api.v1.event.EventService",
    methods: [
      Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents,
      Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList,
      Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary,
    ]
  )

  public enum Methods {
    public static let publishUsageEvents = GRPCMethodDescriptor(
      name: "PublishUsageEvents",
      path: "/sensory.api.v1.event.EventService/PublishUsageEvents",
      type: GRPCCallType.unary
    )

    public static let getUsageEventList = GRPCMethodDescriptor(
      name: "GetUsageEventList",
      path: "/sensory.api.v1.event.EventService/GetUsageEventList",
      type: GRPCCallType.unary
    )

    public static let getUsageEventSummary = GRPCMethodDescriptor(
      name: "GetUsageEventSummary",
      path: "/sensory.api.v1.event.EventService/GetUsageEventSummary",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Sensory_Api_V1_Event_EventServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
public final class Sensory_Api_V1_Event_EventServiceTestClient: Sensory_Api_V1_Event_EventServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Event_EventServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the PublishUsageEvents RPC. This must be called
  /// before calling 'publishUsageEvents'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makePublishUsageEventsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_PublishUsageEventsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Event_PublishUsageEventsRequest, Sensory_Api_V1_Event_PublishUsageEventsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents.path, requestHandler: requestHandler)
  }

  public func enqueuePublishUsageEventsResponse(
    _ response: Sensory_Api_V1_Event_PublishUsageEventsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_PublishUsageEventsRequest>) -> () = { _ in }
  ) {
    let stream = self.makePublishUsageEventsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'PublishUsageEvents'
  public var hasPublishUsageEventsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.publishUsageEvents.path)
  }

  /// Make a unary response for the GetUsageEventList RPC. This must be called
  /// before calling 'getUsageEventList'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetUsageEventListResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_UsageEventListRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventListResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList.path, requestHandler: requestHandler)
  }

  public func enqueueGetUsageEventListResponse(
    _ response: Sensory_Api_V1_Event_UsageEventListResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_UsageEventListRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetUsageEventListResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetUsageEventList'
  public var hasGetUsageEventListResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventList.path)
  }

  /// Make a unary response for the GetUsageEventSummary RPC. This must be called
  /// before calling 'getUsageEventSummary'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetUsageEventSummaryResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_UsageEventListRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Event_UsageEventListRequest, Sensory_Api_V1_Event_UsageEventSummary> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary.path, requestHandler: requestHandler)
  }

  public func enqueueGetUsageEventSummaryResponse(
    _ response: Sensory_Api_V1_Event_UsageEventSummary,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Event_UsageEventListRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetUsageEventSummaryResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetUsageEventSummary'
  public var hasGetUsageEventSummaryResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Event_EventServiceClientMetadata.Methods.getUsageEventSummary.path)
  }
}

