// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: v1/management/enrollment.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// sensory.api.management

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Criteria to filter the returned enrollments
/// A client may only retrieve enrollments
public struct Sensory_Api_V1_Management_GetEnrollmentsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The id or userId of the user
  public var userID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A response containing a list of enrollments
public struct Sensory_Api_V1_Management_GetEnrollmentsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of enrollments
  public var enrollments: [Sensory_Api_V1_Management_EnrollmentResponse] = []

  /// An indication of if the requesting oauth agent is trusted for these enrollments.
  /// If the device is not trusted, identifying information will be removed from the enrollment response.
  public var isRequestorTrusted: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A response containing a single enrollment
public struct Sensory_Api_V1_Management_EnrollmentResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unique enrollment idenfier (UUID)
  public var id: String = String()

  /// Created at epoch
  public var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  public var hasCreatedAt: Bool {return self._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreatedAt() {self._createdAt = nil}

  /// Updated at epoch
  public var updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updatedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updatedAt = newValue}
  }
  /// Returns true if `updatedAt` has been explicitly set.
  public var hasUpdatedAt: Bool {return self._updatedAt != nil}
  /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
  public mutating func clearUpdatedAt() {self._updatedAt = nil}

  /// User-entered Description
  public var description_p: String = String()

  /// Name of the model belonging to the enrollment
  public var modelName: String = String()

  /// Type of the model enrolled
  public var modelType: Sensory_Api_Common_ModelType = .voiceBiometricTextDependent

  /// Version of the model enrolled
  public var modelVersion: String = String()

  /// Id of the device that enrolled this model
  public var deviceID: String = String()

  /// Id of the user that enrolled this model
  public var userID: String = String()

  /// The type of data compression that was used during enrollment creation
  public var compression: Sensory_Api_Common_CompressionConfiguration {
    get {return _compression ?? Sensory_Api_Common_CompressionConfiguration()}
    set {_compression = newValue}
  }
  /// Returns true if `compression` has been explicitly set.
  public var hasCompression: Bool {return self._compression != nil}
  /// Clears the value of `compression`. Subsequent reads from it will return its default value.
  public mutating func clearCompression() {self._compression = nil}

  /// Name of the device that enrolled this model
  public var deviceName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _compression: Sensory_Api_Common_CompressionConfiguration? = nil
}

/// A response containing a list of enrollment groups
public struct Sensory_Api_V1_Management_GetEnrollmentGroupsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of enrollment groups
  public var enrollmentGroups: [Sensory_Api_V1_Management_EnrollmentGroupResponse] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A group of enrollments that can be authenticated together
public struct Sensory_Api_V1_Management_EnrollmentGroupResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Unique group identifier (UUID)
  public var id: String = String()

  /// Created at epoch
  public var createdAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createdAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  public var hasCreatedAt: Bool {return self._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreatedAt() {self._createdAt = nil}

  /// Updated at epoch
  public var updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updatedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updatedAt = newValue}
  }
  /// Returns true if `updatedAt` has been explicitly set.
  public var hasUpdatedAt: Bool {return self._updatedAt != nil}
  /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
  public mutating func clearUpdatedAt() {self._updatedAt = nil}

  /// Name of the enrollment group
  public var name: String = String()

  /// Description of the enrollment group
  public var description_p: String = String()

  /// Name of the model for this enrollment group
  public var modelName: String = String()

  /// Type of the model for this enrollment gooup
  public var modelType: Sensory_Api_Common_ModelType = .voiceBiometricTextDependent

  /// Version of the model
  public var modelVersion: String = String()

  /// UserID of the user who created the enrollment group
  public var userID: String = String()

  /// List of enrollments contained in this enrollment group
  public var enrollments: [Sensory_Api_V1_Management_EnrollmentResponse] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createdAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updatedAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Request to create a new enrollment group
public struct Sensory_Api_V1_Management_CreateEnrollmentGroupRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifier for enrollment group
  public var id: String = String()

  /// Name of the enrollment group
  public var name: String = String()

  /// Description for the enrollment group
  public var description_p: String = String()

  /// Model name for the model used by this enrollment group
  public var modelName: String = String()

  /// User ID of the user that owns the enrollment group
  public var userID: String = String()

  /// List of enrollment IDs to include in the enrollment group
  public var enrollmentIds: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request to append additional enrollments to an enrollment group
public struct Sensory_Api_V1_Management_AppendEnrollmentGroupRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Enrollment group ID to append enrollments to
  public var groupID: String = String()

  /// List of enrollment IDS to append
  public var enrollmentIds: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request to delete and enrollment by ID
public struct Sensory_Api_V1_Management_DeleteEnrollmentRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The enrollment ID
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request to delete an enrollment group
public struct Sensory_Api_V1_Management_DeleteEnrollmentGroupRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Enrollment Group ID
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "sensory.api.v1.management"

extension Sensory_Api_V1_Management_GetEnrollmentsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetEnrollmentsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_GetEnrollmentsRequest, rhs: Sensory_Api_V1_Management_GetEnrollmentsRequest) -> Bool {
    if lhs.userID != rhs.userID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_GetEnrollmentsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetEnrollmentsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "enrollments"),
    2: .same(proto: "isRequestorTrusted"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.enrollments) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.isRequestorTrusted) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.enrollments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.enrollments, fieldNumber: 1)
    }
    if self.isRequestorTrusted != false {
      try visitor.visitSingularBoolField(value: self.isRequestorTrusted, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_GetEnrollmentsResponse, rhs: Sensory_Api_V1_Management_GetEnrollmentsResponse) -> Bool {
    if lhs.enrollments != rhs.enrollments {return false}
    if lhs.isRequestorTrusted != rhs.isRequestorTrusted {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_EnrollmentResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EnrollmentResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "createdAt"),
    3: .same(proto: "updatedAt"),
    4: .same(proto: "description"),
    5: .same(proto: "modelName"),
    6: .same(proto: "modelType"),
    7: .same(proto: "modelVersion"),
    8: .same(proto: "deviceId"),
    9: .same(proto: "userId"),
    10: .same(proto: "compression"),
    11: .same(proto: "deviceName"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.modelName) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.modelType) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.modelVersion) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.deviceID) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      case 10: try { try decoder.decodeSingularMessageField(value: &self._compression) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.deviceName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._createdAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._updatedAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 4)
    }
    if !self.modelName.isEmpty {
      try visitor.visitSingularStringField(value: self.modelName, fieldNumber: 5)
    }
    if self.modelType != .voiceBiometricTextDependent {
      try visitor.visitSingularEnumField(value: self.modelType, fieldNumber: 6)
    }
    if !self.modelVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.modelVersion, fieldNumber: 7)
    }
    if !self.deviceID.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceID, fieldNumber: 8)
    }
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 9)
    }
    if let v = self._compression {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }
    if !self.deviceName.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceName, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_EnrollmentResponse, rhs: Sensory_Api_V1_Management_EnrollmentResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._createdAt != rhs._createdAt {return false}
    if lhs._updatedAt != rhs._updatedAt {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.modelName != rhs.modelName {return false}
    if lhs.modelType != rhs.modelType {return false}
    if lhs.modelVersion != rhs.modelVersion {return false}
    if lhs.deviceID != rhs.deviceID {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs._compression != rhs._compression {return false}
    if lhs.deviceName != rhs.deviceName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_GetEnrollmentGroupsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetEnrollmentGroupsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "enrollmentGroups"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.enrollmentGroups) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.enrollmentGroups.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.enrollmentGroups, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_GetEnrollmentGroupsResponse, rhs: Sensory_Api_V1_Management_GetEnrollmentGroupsResponse) -> Bool {
    if lhs.enrollmentGroups != rhs.enrollmentGroups {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_EnrollmentGroupResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EnrollmentGroupResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "createdAt"),
    3: .same(proto: "updatedAt"),
    4: .same(proto: "name"),
    5: .same(proto: "description"),
    6: .same(proto: "modelName"),
    7: .same(proto: "modelType"),
    8: .same(proto: "modelVersion"),
    9: .same(proto: "userId"),
    10: .same(proto: "enrollments"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._createdAt) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updatedAt) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.modelName) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.modelType) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.modelVersion) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      case 10: try { try decoder.decodeRepeatedMessageField(value: &self.enrollments) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._createdAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._updatedAt {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 4)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 5)
    }
    if !self.modelName.isEmpty {
      try visitor.visitSingularStringField(value: self.modelName, fieldNumber: 6)
    }
    if self.modelType != .voiceBiometricTextDependent {
      try visitor.visitSingularEnumField(value: self.modelType, fieldNumber: 7)
    }
    if !self.modelVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.modelVersion, fieldNumber: 8)
    }
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 9)
    }
    if !self.enrollments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.enrollments, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_EnrollmentGroupResponse, rhs: Sensory_Api_V1_Management_EnrollmentGroupResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._createdAt != rhs._createdAt {return false}
    if lhs._updatedAt != rhs._updatedAt {return false}
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.modelName != rhs.modelName {return false}
    if lhs.modelType != rhs.modelType {return false}
    if lhs.modelVersion != rhs.modelVersion {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs.enrollments != rhs.enrollments {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_CreateEnrollmentGroupRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateEnrollmentGroupRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "description"),
    4: .same(proto: "modelName"),
    5: .same(proto: "userId"),
    6: .same(proto: "enrollmentIds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.modelName) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.enrollmentIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if !self.modelName.isEmpty {
      try visitor.visitSingularStringField(value: self.modelName, fieldNumber: 4)
    }
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 5)
    }
    if !self.enrollmentIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.enrollmentIds, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_CreateEnrollmentGroupRequest, rhs: Sensory_Api_V1_Management_CreateEnrollmentGroupRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.modelName != rhs.modelName {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs.enrollmentIds != rhs.enrollmentIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_AppendEnrollmentGroupRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AppendEnrollmentGroupRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "groupId"),
    2: .same(proto: "enrollmentIds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.groupID) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.enrollmentIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.groupID.isEmpty {
      try visitor.visitSingularStringField(value: self.groupID, fieldNumber: 1)
    }
    if !self.enrollmentIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.enrollmentIds, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_AppendEnrollmentGroupRequest, rhs: Sensory_Api_V1_Management_AppendEnrollmentGroupRequest) -> Bool {
    if lhs.groupID != rhs.groupID {return false}
    if lhs.enrollmentIds != rhs.enrollmentIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_DeleteEnrollmentRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteEnrollmentRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_DeleteEnrollmentRequest, rhs: Sensory_Api_V1_Management_DeleteEnrollmentRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Management_DeleteEnrollmentGroupRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteEnrollmentGroupRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Management_DeleteEnrollmentGroupRequest, rhs: Sensory_Api_V1_Management_DeleteEnrollmentGroupRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
