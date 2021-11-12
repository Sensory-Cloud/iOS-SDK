//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: v1/audio/audio.proto
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
import SwiftProtobuf


/// Handles the retrieval and management of audio models
///
/// Usage: instantiate `Sensory_Api_V1_Audio_AudioModelsClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_Audio_AudioModelsClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol? { get }

  func getModels(
    _ request: Sensory_Api_V1_Audio_GetModelsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Audio_GetModelsRequest, Sensory_Api_V1_Audio_GetModelsResponse>
}

extension Sensory_Api_V1_Audio_AudioModelsClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.audio.AudioModels"
  }

  /// Get available models for enrollment and authentication
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetModels.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getModels(
    _ request: Sensory_Api_V1_Audio_GetModelsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Audio_GetModelsRequest, Sensory_Api_V1_Audio_GetModelsResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.audio.AudioModels/GetModels",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetModelsInterceptors() ?? []
    )
  }
}

public protocol Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getModels'.
  func makeGetModelsInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Audio_GetModelsRequest, Sensory_Api_V1_Audio_GetModelsResponse>]
}

public final class Sensory_Api_V1_Audio_AudioModelsClient: Sensory_Api_V1_Audio_AudioModelsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.audio.AudioModels service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public final class Sensory_Api_V1_Audio_AudioModelsTestClient: Sensory_Api_V1_Audio_AudioModelsClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioModelsClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the GetModels RPC. This must be called
  /// before calling 'getModels'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetModelsResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_GetModelsRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Audio_GetModelsRequest, Sensory_Api_V1_Audio_GetModelsResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.audio.AudioModels/GetModels", requestHandler: requestHandler)
  }

  public func enqueueGetModelsResponse(
    _ response: Sensory_Api_V1_Audio_GetModelsResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_GetModelsRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetModelsResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetModels'
  public var hasGetModelsResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.audio.AudioModels/GetModels")
  }
}

/// Handles all audio-related biometrics
///
/// Usage: instantiate `Sensory_Api_V1_Audio_AudioBiometricsClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_Audio_AudioBiometricsClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol? { get }

  func createEnrollment(
    callOptions: CallOptions?,
    handler: @escaping (Sensory_Api_V1_Audio_CreateEnrollmentResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_CreateEnrollmentRequest, Sensory_Api_V1_Audio_CreateEnrollmentResponse>

  func authenticate(
    callOptions: CallOptions?,
    handler: @escaping (Sensory_Api_V1_Audio_AuthenticateResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_AuthenticateRequest, Sensory_Api_V1_Audio_AuthenticateResponse>
}

extension Sensory_Api_V1_Audio_AudioBiometricsClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.audio.AudioBiometrics"
  }

  /// Enrolls a user with a stream of audio. Streams a CreateEnrollmentResponse
  /// as the audio is processed.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func createEnrollment(
    callOptions: CallOptions? = nil,
    handler: @escaping (Sensory_Api_V1_Audio_CreateEnrollmentResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_CreateEnrollmentRequest, Sensory_Api_V1_Audio_CreateEnrollmentResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/sensory.api.v1.audio.AudioBiometrics/CreateEnrollment",
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCreateEnrollmentInterceptors() ?? [],
      handler: handler
    )
  }

  /// Authenticates a user with a stream of audio against an existing enrollment.
  /// Streams an AuthenticateResponse as the audio is processed.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func authenticate(
    callOptions: CallOptions? = nil,
    handler: @escaping (Sensory_Api_V1_Audio_AuthenticateResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_AuthenticateRequest, Sensory_Api_V1_Audio_AuthenticateResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/sensory.api.v1.audio.AudioBiometrics/Authenticate",
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAuthenticateInterceptors() ?? [],
      handler: handler
    )
  }
}

public protocol Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'createEnrollment'.
  func makeCreateEnrollmentInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Audio_CreateEnrollmentRequest, Sensory_Api_V1_Audio_CreateEnrollmentResponse>]

  /// - Returns: Interceptors to use when invoking 'authenticate'.
  func makeAuthenticateInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Audio_AuthenticateRequest, Sensory_Api_V1_Audio_AuthenticateResponse>]
}

public final class Sensory_Api_V1_Audio_AudioBiometricsClient: Sensory_Api_V1_Audio_AudioBiometricsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.audio.AudioBiometrics service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public final class Sensory_Api_V1_Audio_AudioBiometricsTestClient: Sensory_Api_V1_Audio_AudioBiometricsClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioBiometricsClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a streaming response for the CreateEnrollment RPC. This must be called
  /// before calling 'createEnrollment'. See also 'FakeStreamingResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeCreateEnrollmentResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_CreateEnrollmentRequest>) -> () = { _ in }
  ) -> FakeStreamingResponse<Sensory_Api_V1_Audio_CreateEnrollmentRequest, Sensory_Api_V1_Audio_CreateEnrollmentResponse> {
    return self.fakeChannel.makeFakeStreamingResponse(path: "/sensory.api.v1.audio.AudioBiometrics/CreateEnrollment", requestHandler: requestHandler)
  }

  public func enqueueCreateEnrollmentResponses(
    _ responses: [Sensory_Api_V1_Audio_CreateEnrollmentResponse],
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_CreateEnrollmentRequest>) -> () = { _ in }
  )  {
    let stream = self.makeCreateEnrollmentResponseStream(requestHandler)
    // These are the only operation on the stream; try! is fine.
    responses.forEach { try! stream.sendMessage($0) }
    try! stream.sendEnd()
  }

  /// Returns true if there are response streams enqueued for 'CreateEnrollment'
  public var hasCreateEnrollmentResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.audio.AudioBiometrics/CreateEnrollment")
  }

  /// Make a streaming response for the Authenticate RPC. This must be called
  /// before calling 'authenticate'. See also 'FakeStreamingResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeAuthenticateResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_AuthenticateRequest>) -> () = { _ in }
  ) -> FakeStreamingResponse<Sensory_Api_V1_Audio_AuthenticateRequest, Sensory_Api_V1_Audio_AuthenticateResponse> {
    return self.fakeChannel.makeFakeStreamingResponse(path: "/sensory.api.v1.audio.AudioBiometrics/Authenticate", requestHandler: requestHandler)
  }

  public func enqueueAuthenticateResponses(
    _ responses: [Sensory_Api_V1_Audio_AuthenticateResponse],
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_AuthenticateRequest>) -> () = { _ in }
  )  {
    let stream = self.makeAuthenticateResponseStream(requestHandler)
    // These are the only operation on the stream; try! is fine.
    responses.forEach { try! stream.sendMessage($0) }
    try! stream.sendEnd()
  }

  /// Returns true if there are response streams enqueued for 'Authenticate'
  public var hasAuthenticateResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.audio.AudioBiometrics/Authenticate")
  }
}

/// Handles all audio event processing
///
/// Usage: instantiate `Sensory_Api_V1_Audio_AudioEventsClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_Audio_AudioEventsClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol? { get }

  func validateEvent(
    callOptions: CallOptions?,
    handler: @escaping (Sensory_Api_V1_Audio_ValidateEventResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_ValidateEventRequest, Sensory_Api_V1_Audio_ValidateEventResponse>
}

extension Sensory_Api_V1_Audio_AudioEventsClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.audio.AudioEvents"
  }

  /// Validates a phrase or sound with a stream of audio.
  /// Streams a ValidateEventResponse as the audio is processed.
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func validateEvent(
    callOptions: CallOptions? = nil,
    handler: @escaping (Sensory_Api_V1_Audio_ValidateEventResponse) -> Void
  ) -> BidirectionalStreamingCall<Sensory_Api_V1_Audio_ValidateEventRequest, Sensory_Api_V1_Audio_ValidateEventResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/sensory.api.v1.audio.AudioEvents/ValidateEvent",
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidateEventInterceptors() ?? [],
      handler: handler
    )
  }
}

public protocol Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'validateEvent'.
  func makeValidateEventInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Audio_ValidateEventRequest, Sensory_Api_V1_Audio_ValidateEventResponse>]
}

public final class Sensory_Api_V1_Audio_AudioEventsClient: Sensory_Api_V1_Audio_AudioEventsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.audio.AudioEvents service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public final class Sensory_Api_V1_Audio_AudioEventsTestClient: Sensory_Api_V1_Audio_AudioEventsClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Audio_AudioEventsClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a streaming response for the ValidateEvent RPC. This must be called
  /// before calling 'validateEvent'. See also 'FakeStreamingResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeValidateEventResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_ValidateEventRequest>) -> () = { _ in }
  ) -> FakeStreamingResponse<Sensory_Api_V1_Audio_ValidateEventRequest, Sensory_Api_V1_Audio_ValidateEventResponse> {
    return self.fakeChannel.makeFakeStreamingResponse(path: "/sensory.api.v1.audio.AudioEvents/ValidateEvent", requestHandler: requestHandler)
  }

  public func enqueueValidateEventResponses(
    _ responses: [Sensory_Api_V1_Audio_ValidateEventResponse],
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Audio_ValidateEventRequest>) -> () = { _ in }
  )  {
    let stream = self.makeValidateEventResponseStream(requestHandler)
    // These are the only operation on the stream; try! is fine.
    responses.forEach { try! stream.sendMessage($0) }
    try! stream.sendEnd()
  }

  /// Returns true if there are response streams enqueued for 'ValidateEvent'
  public var hasValidateEventResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.audio.AudioEvents/ValidateEvent")
  }
}

