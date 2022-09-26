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
import NIOConcurrencyHelpers
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

  func getDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse>

  func getDevices(
    _ request: Sensory_Api_V1_Management_GetDevicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse>

  func updateDevice(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>

  func deleteDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse>
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
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice.path,
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
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential.path,
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
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  /// Returns device information
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDeviceInterceptors() ?? []
    )
  }

  /// Returns a list of devices associated with the given userId
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDevices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDevices(
    _ request: Sensory_Api_V1_Management_GetDevicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDevicesInterceptors() ?? []
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
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateDeviceInterceptors() ?? []
    )
  }

  /// Allows a device to be deleted
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeviceInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Sensory_Api_V1_Management_DeviceServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Sensory_Api_V1_Management_DeviceServiceNIOClient")
public final class Sensory_Api_V1_Management_DeviceServiceClient: Sensory_Api_V1_Management_DeviceServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

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
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Sensory_Api_V1_Management_DeviceServiceNIOClient: Sensory_Api_V1_Management_DeviceServiceClientProtocol {
  public var channel: GRPCChannel
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

#if compiler(>=5.6)
/// Service to manage Devices in the database
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Sensory_Api_V1_Management_DeviceServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? { get }

  func makeEnrollDeviceCall(
    _ request: Sensory_Api_V1_Management_EnrollDeviceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>

  func makeRenewDeviceCredentialCall(
    _ request: Sensory_Api_V1_Management_RenewDeviceCredentialRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse>

  func makeGetWhoAmICall(
    _ request: Sensory_Api_V1_Management_DeviceGetWhoAmIRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse>

  func makeGetDeviceCall(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse>

  func makeGetDevicesCall(
    _ request: Sensory_Api_V1_Management_GetDevicesRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse>

  func makeUpdateDeviceCall(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>

  func makeDeleteDeviceCall(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_Management_DeviceServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Sensory_Api_V1_Management_DeviceServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeEnrollDeviceCall(
    _ request: Sensory_Api_V1_Management_EnrollDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEnrollDeviceInterceptors() ?? []
    )
  }

  public func makeRenewDeviceCredentialCall(
    _ request: Sensory_Api_V1_Management_RenewDeviceCredentialRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRenewDeviceCredentialInterceptors() ?? []
    )
  }

  public func makeGetWhoAmICall(
    _ request: Sensory_Api_V1_Management_DeviceGetWhoAmIRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  public func makeGetDeviceCall(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDeviceInterceptors() ?? []
    )
  }

  public func makeGetDevicesCall(
    _ request: Sensory_Api_V1_Management_GetDevicesRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDevicesInterceptors() ?? []
    )
  }

  public func makeUpdateDeviceCall(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateDeviceInterceptors() ?? []
    )
  }

  public func makeDeleteDeviceCall(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.makeAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeviceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Sensory_Api_V1_Management_DeviceServiceAsyncClientProtocol {
  public func enrollDevice(
    _ request: Sensory_Api_V1_Management_EnrollDeviceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEnrollDeviceInterceptors() ?? []
    )
  }

  public func renewDeviceCredential(
    _ request: Sensory_Api_V1_Management_RenewDeviceCredentialRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRenewDeviceCredentialInterceptors() ?? []
    )
  }

  public func getWhoAmI(
    _ request: Sensory_Api_V1_Management_DeviceGetWhoAmIRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWhoAmIInterceptors() ?? []
    )
  }

  public func getDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_GetDeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDeviceInterceptors() ?? []
    )
  }

  public func getDevices(
    _ request: Sensory_Api_V1_Management_GetDevicesRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceListResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetDevicesInterceptors() ?? []
    )
  }

  public func updateDevice(
    _ request: Sensory_Api_V1_Management_UpdateDeviceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateDeviceInterceptors() ?? []
    )
  }

  public func deleteDevice(
    _ request: Sensory_Api_V1_Management_DeviceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Sensory_Api_V1_Management_DeviceResponse {
    return try await self.performAsyncUnaryCall(
      path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteDeviceInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Sensory_Api_V1_Management_DeviceServiceAsyncClient: Sensory_Api_V1_Management_DeviceServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol?

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

#endif // compiler(>=5.6)

public protocol Sensory_Api_V1_Management_DeviceServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'enrollDevice'.
  func makeEnrollDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_EnrollDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'renewDeviceCredential'.
  func makeRenewDeviceCredentialInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'getWhoAmI'.
  func makeGetWhoAmIInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'getDevice'.
  func makeGetDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'getDevices'.
  func makeGetDevicesInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse>]

  /// - Returns: Interceptors to use when invoking 'updateDevice'.
  func makeUpdateDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]

  /// - Returns: Interceptors to use when invoking 'deleteDevice'.
  func makeDeleteDeviceInterceptors() -> [ClientInterceptor<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse>]
}

public enum Sensory_Api_V1_Management_DeviceServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "DeviceService",
    fullName: "sensory.api.v1.management.DeviceService",
    methods: [
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice,
      Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice,
    ]
  )

  public enum Methods {
    public static let enrollDevice = GRPCMethodDescriptor(
      name: "EnrollDevice",
      path: "/sensory.api.v1.management.DeviceService/EnrollDevice",
      type: GRPCCallType.unary
    )

    public static let renewDeviceCredential = GRPCMethodDescriptor(
      name: "RenewDeviceCredential",
      path: "/sensory.api.v1.management.DeviceService/RenewDeviceCredential",
      type: GRPCCallType.unary
    )

    public static let getWhoAmI = GRPCMethodDescriptor(
      name: "GetWhoAmI",
      path: "/sensory.api.v1.management.DeviceService/GetWhoAmI",
      type: GRPCCallType.unary
    )

    public static let getDevice = GRPCMethodDescriptor(
      name: "GetDevice",
      path: "/sensory.api.v1.management.DeviceService/GetDevice",
      type: GRPCCallType.unary
    )

    public static let getDevices = GRPCMethodDescriptor(
      name: "GetDevices",
      path: "/sensory.api.v1.management.DeviceService/GetDevices",
      type: GRPCCallType.unary
    )

    public static let updateDevice = GRPCMethodDescriptor(
      name: "UpdateDevice",
      path: "/sensory.api.v1.management.DeviceService/UpdateDevice",
      type: GRPCCallType.unary
    )

    public static let deleteDevice = GRPCMethodDescriptor(
      name: "DeleteDevice",
      path: "/sensory.api.v1.management.DeviceService/DeleteDevice",
      type: GRPCCallType.unary
    )
  }
}

#if compiler(>=5.6)
@available(swift, deprecated: 5.6)
extension Sensory_Api_V1_Management_DeviceServiceTestClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(swift, deprecated: 5.6, message: "Test clients are not Sendable but the 'GRPCClient' API requires clients to be Sendable. Using a localhost client and server is the recommended alternative.")
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
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice.path, requestHandler: requestHandler)
  }

  public func enqueueEnrollDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_EnrollDeviceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeEnrollDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'EnrollDevice'
  public var hasEnrollDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.enrollDevice.path)
  }

  /// Make a unary response for the RenewDeviceCredential RPC. This must be called
  /// before calling 'renewDeviceCredential'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeRenewDeviceCredentialResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_RenewDeviceCredentialRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_RenewDeviceCredentialRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential.path, requestHandler: requestHandler)
  }

  public func enqueueRenewDeviceCredentialResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_RenewDeviceCredentialRequest>) -> () = { _ in }
  ) {
    let stream = self.makeRenewDeviceCredentialResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'RenewDeviceCredential'
  public var hasRenewDeviceCredentialResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.renewDeviceCredential.path)
  }

  /// Make a unary response for the GetWhoAmI RPC. This must be called
  /// before calling 'getWhoAmI'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetWhoAmIResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI.path, requestHandler: requestHandler)
  }

  public func enqueueGetWhoAmIResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceGetWhoAmIRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetWhoAmIResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetWhoAmI'
  public var hasGetWhoAmIResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getWhoAmI.path)
  }

  /// Make a unary response for the GetDevice RPC. This must be called
  /// before calling 'getDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_GetDeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice.path, requestHandler: requestHandler)
  }

  public func enqueueGetDeviceResponse(
    _ response: Sensory_Api_V1_Management_GetDeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetDevice'
  public var hasGetDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevice.path)
  }

  /// Make a unary response for the GetDevices RPC. This must be called
  /// before calling 'getDevices'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeGetDevicesResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_GetDevicesRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_GetDevicesRequest, Sensory_Api_V1_Management_DeviceListResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices.path, requestHandler: requestHandler)
  }

  public func enqueueGetDevicesResponse(
    _ response: Sensory_Api_V1_Management_DeviceListResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_GetDevicesRequest>) -> () = { _ in }
  ) {
    let stream = self.makeGetDevicesResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'GetDevices'
  public var hasGetDevicesResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.getDevices.path)
  }

  /// Make a unary response for the UpdateDevice RPC. This must be called
  /// before calling 'updateDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeUpdateDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_UpdateDeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_UpdateDeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice.path, requestHandler: requestHandler)
  }

  public func enqueueUpdateDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_UpdateDeviceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeUpdateDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'UpdateDevice'
  public var hasUpdateDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.updateDevice.path)
  }

  /// Make a unary response for the DeleteDevice RPC. This must be called
  /// before calling 'deleteDevice'. See also 'FakeUnaryResponse'.
  ///
  /// - Parameter requestHandler: a handler for request parts sent by the RPC.
  public func makeDeleteDeviceResponseStream(
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceRequest>) -> () = { _ in }
  ) -> FakeUnaryResponse<Sensory_Api_V1_Management_DeviceRequest, Sensory_Api_V1_Management_DeviceResponse> {
    return self.fakeChannel.makeFakeUnaryResponse(path: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice.path, requestHandler: requestHandler)
  }

  public func enqueueDeleteDeviceResponse(
    _ response: Sensory_Api_V1_Management_DeviceResponse,
    _ requestHandler: @escaping (FakeRequestPart<Sensory_Api_V1_Management_DeviceRequest>) -> () = { _ in }
  ) {
    let stream = self.makeDeleteDeviceResponseStream(requestHandler)
    // This is the only operation on the stream; try! is fine.
    try! stream.sendMessage(response)
  }

  /// Returns true if there are response streams enqueued for 'DeleteDevice'
  public var hasDeleteDeviceResponsesRemaining: Bool {
    return self.fakeChannel.hasFakeResponseEnqueued(forPath: Sensory_Api_V1_Management_DeviceServiceClientMetadata.Methods.deleteDevice.path)
  }
}

