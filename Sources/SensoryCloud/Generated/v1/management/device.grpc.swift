//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: v1/management/device.proto
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


/// Service to manage Devices in the database
///
/// Usage: instantiate `Sensory_Api_V1_Management_DeviceServiceClient`, then call methods of this protocol to make API calls.
public protocol Sensory_Api_V1_Management_DeviceServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? { get }

  func enrollDevice(
    _ request: Sensory_Api_V1_Management_EnrollDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>

  func renewDeviceCredential(
    _ request: Sensory_Api_V1_Management_RenewDeviceCredentialRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse>

  func getWhoAmI(
    _ request: Sensory_Api_V1_Management_DeviceGetWhoAmIRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse>

  func deleteDevice(
    _ request: Sensory_Api_V1_Management_DeleteDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_DeleteDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>

  func updateDevice(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>
}

extension Sensory_Api_V1_Management_DeviceServiceClientProtocol {
  public var serviceName: String {
    return "sensory.api.v1.management.DeviceService"
  }

  /// Create a new device in the database
  ///
  /// - Parameters:
  ///   - request: Request to send to EnrollDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func enrollDevice(
    _ request: Sensory_Api_V1_Management_EnrollDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.management.DeviceService/EnrollDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEnrollDeviceInterceptors() ?? []
    )
  }

  /// Renew a device's credential, which links the device to a key in the database.
  /// This endpoint can be used to assign a new credential to a device if the old credential has expired.
  ///
  /// - Parameters:
  ///   - request: Request to send to RenewDeviceCredential.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func renewDeviceCredential(
    _ request: Sensory_Api_V1_Management_RenewDeviceCredentialRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.management.DeviceService/RenewDeviceCredential",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRenewDeviceCredentialInterceptors() ?? []
    )
  }

  /// Allows a device to fetch information about itself
  /// Authorization metadata is required {"authorization": "Bearer <TOKEN>"}
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWhoAmI.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWhoAmI(
    _ request: Sensory_Api_V1_Management_DeviceGetWhoAmIRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.management.DeviceService/GetWhoAmI",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  /// Allows a device to be deleted
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDevice(
    _ request: Sensory_Api_V1_Management_DeleteDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_DeleteDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.management.DeviceService/DeleteDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeviceInterceptors() ?? []
    )
  }

  /// Allows the name of a device to be updated
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDevice(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: "/sensory.api.v1.management.DeviceService/UpdateDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateDeviceInterceptors() ?? []
    )
  }
}

public protocol Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'enrollDevice'.
  func makeEnrollDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'renewDeviceCredential'.
  func makeRenewDeviceCredentialInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'getWhoAmI'.
  func makeGetWhoAmIInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteDevice'.
  func makeDeleteDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_DeleteDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'updateDevice'.
  func makeUpdateDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]
}

public final class Sensory_Api_V1_Management_DeviceServiceClient: Sensory_Api_V1_Management_DeviceServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the sensory.api.v1.management.DeviceService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public final class Sensory_Api_V1_Management_DeviceServiceTestClient: Sensory_Api_V1_Management_DeviceServiceClientProtocol {
  private let fakeChannel: FakeChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol?

  public var channel: GRPCChannel {
    return self.fakeChannel
  }

  public init(
    fakeChannel: FakeChannel = FakeChannel(),
    defaultCallOptions callOptions: CallOptions = CallOptions(),
    interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.fakeChannel = fakeChannel
    self.defaultCallOptions = callOptions
    self.interceptors = interceptors
  }

  /// Make a unary response for the EnrollDevice RPC. This must be called
  /// before calling 'enrollDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeEnrollDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_EnrollDeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.management.DeviceService/EnrollDevice", requestHandler: requestHandler)
  }

  public func enqueueEnrollDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_EnrollDeviceRequest>) -> () = { _ in }
  )  {
    let stream = self.makeEnrollDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EnrollDevice'
  public var hasEnrollDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.management.DeviceService/EnrollDevice")
  }

  /// Make a unary response for the RenewDeviceCredential RPC. This must be called
  /// before calling 'renewDeviceCredential'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeRenewDeviceCredentialResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_RenewDeviceCredentialRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.management.DeviceService/RenewDeviceCredential", requestHandler: requestHandler)
  }

  public func enqueueRenewDeviceCredentialResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_RenewDeviceCredentialRequest>) -> () = { _ in }
  )  {
    let stream = self.makeRenewDeviceCredentialResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'RenewDeviceCredential'
  public var hasRenewDeviceCredentialResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.management.DeviceService/RenewDeviceCredential")
  }

  /// Make a unary response for the GetWhoAmI RPC. This must be called
  /// before calling 'getWhoAmI'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetWhoAmIResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.management.DeviceService/GetWhoAmI", requestHandler: requestHandler)
  }

  public func enqueueGetWhoAmIResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest>) -> () = { _ in }
  )  {
    let stream = self.makeGetWhoAmIResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetWhoAmI'
  public var hasGetWhoAmIResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.management.DeviceService/GetWhoAmI")
  }

  /// Make a unary response for the DeleteDevice RPC. This must be called
  /// before calling 'deleteDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDeleteDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeleteDeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_DeleteDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.management.DeviceService/DeleteDevice", requestHandler: requestHandler)
  }

  public func enqueueDeleteDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeleteDeviceRequest>) -> () = { _ in }
  )  {
    let stream = self.makeDeleteDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'DeleteDevice'
  public var hasDeleteDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.management.DeviceService/DeleteDevice")
  }

  /// Make a unary response for the UpdateDevice RPC. This must be called
  /// before calling 'updateDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_UpdateDeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: "/sensory.api.v1.management.DeviceService/UpdateDevice", requestHandler: requestHandler)
  }

  public func enqueueUpdateDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_UpdateDeviceRequest>) -> () = { _ in }
  )  {
    let stream = self.makeUpdateDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateDevice'
  public var hasUpdateDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: "/sensory.api.v1.management.DeviceService/UpdateDevice")
  }
}

