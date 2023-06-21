// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: v1/event/event.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// sensory.api.event

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

/// Request to create a new usage event
public struct Sensory_Api_V1_Event_PublishUsageEventsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of events to publish
  public var events: [Sensory_Api_V1_Event_UsageEvent] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Sensory_Api_V1_Event_UsageEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The UTC timestamp
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// The duration of the event in milliseconds
  public var duration: Int64 = 0

  /// UUID representing the unique event
  public var id: String = String()

  /// OAuth ClientID related to the event
  public var clientID: String = String()

  /// Type of event to create
  public var type: Sensory_Api_Common_UsageEventType = .authentication

  /// The specific route (endpoint) that was accessed
  public var route: String = String()

  /// The technologies that were used
  public var technologies: [Sensory_Api_Common_TechnologyType] = []

  /// The models that were used
  public var models: [String] = []

  /// The duration audio processed in milliseconds
  public var audioDurationMs: Int64 = 0

  /// The number of video frames processed
  public var videoFrameCount: Int64 = 0

  /// Optional Tenant ID of the event. Used internally by Sensory multi-tenant servers
  public var tenantID: String = String()

  /// Billable function, if applicable
  public var billableFunction: Sensory_Api_Common_ModelType = .unknown

  /// The number of tokens processed
  public var tokenCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Sensory_Api_V1_Event_UsageEventResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The UTC timestamp
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// The duration of the event in milliseconds
  public var duration: Int64 = 0

  /// UUID representing the unique event
  public var id: String = String()

  /// OAuth ClientID related to the event
  public var clientID: String = String()

  /// Type of event to create
  public var type: Sensory_Api_Common_UsageEventType = .authentication

  /// The specific route (endpoint) that was accessed
  public var route: String = String()

  /// The technologies that were used
  public var technologies: [Sensory_Api_Common_TechnologyType] = []

  /// The models that were used
  public var models: [String] = []

  /// The value that is billed for this event
  public var billableValue: Int64 = 0

  /// The units of this billed event
  public var billableUnits: String = String()

  /// Optional Tenant ID of the event. Used internally by Sensory multi-tenant servers
  public var tenantID: String = String()

  /// Billable function, if applicable
  public var billableFunction: Sensory_Api_Common_ModelType = .unknown

  /// Credits used by this event
  public var credits: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Sensory_Api_V1_Event_UsageEventListRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional tenantId which must be a UUID. If this UUID is omitted, it will be inferred from the requestor.
  public var tenantID: String = String()

  /// Metadata about how to paginate the response
  public var pagination: Sensory_Api_Common_PaginationOptions {
    get {return _pagination ?? Sensory_Api_Common_PaginationOptions()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  /// Optional Start UTC timestamp. Internally this timestamp is rounded to the nearest second.
  public var after: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _after ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_after = newValue}
  }
  /// Returns true if `after` has been explicitly set.
  public var hasAfter: Bool {return self._after != nil}
  /// Clears the value of `after`. Subsequent reads from it will return its default value.
  public mutating func clearAfter() {self._after = nil}

  /// Optional End UTC timestamp. Internally this timestamp is rounded to the nearest second.
  public var before: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _before ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_before = newValue}
  }
  /// Returns true if `before` has been explicitly set.
  public var hasBefore: Bool {return self._before != nil}
  /// Clears the value of `before`. Subsequent reads from it will return its default value.
  public mutating func clearBefore() {self._before = nil}

  /// Type of event to filter on
  public var billableFunctions: [Sensory_Api_Common_ModelType] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Sensory_Api_Common_PaginationOptions? = nil
  fileprivate var _after: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _before: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Sensory_Api_V1_Event_UsageEventListResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of usage events
  public var events: [Sensory_Api_V1_Event_UsageEventResponse] = []

  /// Metadata about how the response has been paginated
  public var pagination: Sensory_Api_Common_PaginationResponse {
    get {return _pagination ?? Sensory_Api_Common_PaginationResponse()}
    set {_pagination = newValue}
  }
  /// Returns true if `pagination` has been explicitly set.
  public var hasPagination: Bool {return self._pagination != nil}
  /// Clears the value of `pagination`. Subsequent reads from it will return its default value.
  public mutating func clearPagination() {self._pagination = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pagination: Sensory_Api_Common_PaginationResponse? = nil
}

public struct Sensory_Api_V1_Event_GlobalEventSummaryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of tenants to return data for, If left empty all tenants will be included in the response
  public var tenants: [String] = []

  /// Optional Start UTC timestamp. Internally this timestamp is rounded to the nearest second.
  public var after: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _after ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_after = newValue}
  }
  /// Returns true if `after` has been explicitly set.
  public var hasAfter: Bool {return self._after != nil}
  /// Clears the value of `after`. Subsequent reads from it will return its default value.
  public mutating func clearAfter() {self._after = nil}

  /// Optional End UTC timestamp. Internally this timestamp is rounded to the nearest second.
  public var before: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _before ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_before = newValue}
  }
  /// Returns true if `before` has been explicitly set.
  public var hasBefore: Bool {return self._before != nil}
  /// Clears the value of `before`. Subsequent reads from it will return its default value.
  public mutating func clearBefore() {self._before = nil}

  /// Type of event to filter on, If left empty all event types will be included
  public var billableFunctions: [Sensory_Api_Common_ModelType] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _after: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _before: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct Sensory_Api_V1_Event_UsageEventSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of summaries organized by type
  public var summaries: [Sensory_Api_V1_Event_UsageEventModelSummary] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Sensory_Api_V1_Event_UsageEventModelSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Function of the model used
  public var billableFunction: Sensory_Api_Common_ModelType = .unknown

  /// Units of measure for the summary value
  public var units: String = String()

  /// The value of the summary
  public var value: Int64 = 0

  /// The number of events included in the summary
  public var count: Int64 = 0

  /// Credits used by this event
  public var credits: Double = 0

  /// Tenant that the events are from. For summaries that span multiple tenants, this field will be empty
  public var tenantID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response to a publish events request
public struct Sensory_Api_V1_Event_PublishUsageEventsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Sensory_Api_V1_Event_PublishUsageEventsRequest: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEvent: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEventResponse: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEventListRequest: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEventListResponse: @unchecked Sendable {}
extension Sensory_Api_V1_Event_GlobalEventSummaryRequest: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEventSummary: @unchecked Sendable {}
extension Sensory_Api_V1_Event_UsageEventModelSummary: @unchecked Sendable {}
extension Sensory_Api_V1_Event_PublishUsageEventsResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "sensory.api.v1.event"

extension Sensory_Api_V1_Event_PublishUsageEventsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublishUsageEventsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "events"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_PublishUsageEventsRequest, rhs: Sensory_Api_V1_Event_PublishUsageEventsRequest) -> Bool {
    if lhs.events != rhs.events {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .same(proto: "duration"),
    3: .same(proto: "id"),
    4: .same(proto: "clientId"),
    5: .same(proto: "type"),
    6: .same(proto: "route"),
    7: .same(proto: "technologies"),
    8: .same(proto: "models"),
    9: .same(proto: "audioDurationMs"),
    10: .same(proto: "videoFrameCount"),
    11: .same(proto: "tenantId"),
    12: .same(proto: "billableFunction"),
    13: .same(proto: "tokenCount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.duration) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.route) }()
      case 7: try { try decoder.decodeRepeatedEnumField(value: &self.technologies) }()
      case 8: try { try decoder.decodeRepeatedStringField(value: &self.models) }()
      case 9: try { try decoder.decodeSingularInt64Field(value: &self.audioDurationMs) }()
      case 10: try { try decoder.decodeSingularInt64Field(value: &self.videoFrameCount) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.tenantID) }()
      case 12: try { try decoder.decodeSingularEnumField(value: &self.billableFunction) }()
      case 13: try { try decoder.decodeSingularInt64Field(value: &self.tokenCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.duration != 0 {
      try visitor.visitSingularInt64Field(value: self.duration, fieldNumber: 2)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 3)
    }
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 4)
    }
    if self.type != .authentication {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 5)
    }
    if !self.route.isEmpty {
      try visitor.visitSingularStringField(value: self.route, fieldNumber: 6)
    }
    if !self.technologies.isEmpty {
      try visitor.visitPackedEnumField(value: self.technologies, fieldNumber: 7)
    }
    if !self.models.isEmpty {
      try visitor.visitRepeatedStringField(value: self.models, fieldNumber: 8)
    }
    if self.audioDurationMs != 0 {
      try visitor.visitSingularInt64Field(value: self.audioDurationMs, fieldNumber: 9)
    }
    if self.videoFrameCount != 0 {
      try visitor.visitSingularInt64Field(value: self.videoFrameCount, fieldNumber: 10)
    }
    if !self.tenantID.isEmpty {
      try visitor.visitSingularStringField(value: self.tenantID, fieldNumber: 11)
    }
    if self.billableFunction != .unknown {
      try visitor.visitSingularEnumField(value: self.billableFunction, fieldNumber: 12)
    }
    if self.tokenCount != 0 {
      try visitor.visitSingularInt64Field(value: self.tokenCount, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEvent, rhs: Sensory_Api_V1_Event_UsageEvent) -> Bool {
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.duration != rhs.duration {return false}
    if lhs.id != rhs.id {return false}
    if lhs.clientID != rhs.clientID {return false}
    if lhs.type != rhs.type {return false}
    if lhs.route != rhs.route {return false}
    if lhs.technologies != rhs.technologies {return false}
    if lhs.models != rhs.models {return false}
    if lhs.audioDurationMs != rhs.audioDurationMs {return false}
    if lhs.videoFrameCount != rhs.videoFrameCount {return false}
    if lhs.tenantID != rhs.tenantID {return false}
    if lhs.billableFunction != rhs.billableFunction {return false}
    if lhs.tokenCount != rhs.tokenCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEventResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEventResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .same(proto: "duration"),
    3: .same(proto: "id"),
    4: .same(proto: "clientId"),
    5: .same(proto: "type"),
    6: .same(proto: "route"),
    7: .same(proto: "technologies"),
    8: .same(proto: "models"),
    9: .same(proto: "billableValue"),
    10: .same(proto: "billableUnits"),
    11: .same(proto: "tenantId"),
    12: .same(proto: "billableFunction"),
    13: .same(proto: "credits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.duration) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.clientID) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.route) }()
      case 7: try { try decoder.decodeRepeatedEnumField(value: &self.technologies) }()
      case 8: try { try decoder.decodeRepeatedStringField(value: &self.models) }()
      case 9: try { try decoder.decodeSingularInt64Field(value: &self.billableValue) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.billableUnits) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.tenantID) }()
      case 12: try { try decoder.decodeSingularEnumField(value: &self.billableFunction) }()
      case 13: try { try decoder.decodeSingularDoubleField(value: &self.credits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.duration != 0 {
      try visitor.visitSingularInt64Field(value: self.duration, fieldNumber: 2)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 3)
    }
    if !self.clientID.isEmpty {
      try visitor.visitSingularStringField(value: self.clientID, fieldNumber: 4)
    }
    if self.type != .authentication {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 5)
    }
    if !self.route.isEmpty {
      try visitor.visitSingularStringField(value: self.route, fieldNumber: 6)
    }
    if !self.technologies.isEmpty {
      try visitor.visitPackedEnumField(value: self.technologies, fieldNumber: 7)
    }
    if !self.models.isEmpty {
      try visitor.visitRepeatedStringField(value: self.models, fieldNumber: 8)
    }
    if self.billableValue != 0 {
      try visitor.visitSingularInt64Field(value: self.billableValue, fieldNumber: 9)
    }
    if !self.billableUnits.isEmpty {
      try visitor.visitSingularStringField(value: self.billableUnits, fieldNumber: 10)
    }
    if !self.tenantID.isEmpty {
      try visitor.visitSingularStringField(value: self.tenantID, fieldNumber: 11)
    }
    if self.billableFunction != .unknown {
      try visitor.visitSingularEnumField(value: self.billableFunction, fieldNumber: 12)
    }
    if self.credits != 0 {
      try visitor.visitSingularDoubleField(value: self.credits, fieldNumber: 13)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEventResponse, rhs: Sensory_Api_V1_Event_UsageEventResponse) -> Bool {
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.duration != rhs.duration {return false}
    if lhs.id != rhs.id {return false}
    if lhs.clientID != rhs.clientID {return false}
    if lhs.type != rhs.type {return false}
    if lhs.route != rhs.route {return false}
    if lhs.technologies != rhs.technologies {return false}
    if lhs.models != rhs.models {return false}
    if lhs.billableValue != rhs.billableValue {return false}
    if lhs.billableUnits != rhs.billableUnits {return false}
    if lhs.tenantID != rhs.tenantID {return false}
    if lhs.billableFunction != rhs.billableFunction {return false}
    if lhs.credits != rhs.credits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEventListRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEventListRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tenantId"),
    2: .same(proto: "pagination"),
    3: .same(proto: "after"),
    4: .same(proto: "before"),
    5: .same(proto: "billableFunctions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.tenantID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._after) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._before) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.billableFunctions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.tenantID.isEmpty {
      try visitor.visitSingularStringField(value: self.tenantID, fieldNumber: 1)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._after {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._before {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    if !self.billableFunctions.isEmpty {
      try visitor.visitPackedEnumField(value: self.billableFunctions, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEventListRequest, rhs: Sensory_Api_V1_Event_UsageEventListRequest) -> Bool {
    if lhs.tenantID != rhs.tenantID {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs._after != rhs._after {return false}
    if lhs._before != rhs._before {return false}
    if lhs.billableFunctions != rhs.billableFunctions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEventListResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEventListResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "events"),
    2: .same(proto: "pagination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pagination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 1)
    }
    try { if let v = self._pagination {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEventListResponse, rhs: Sensory_Api_V1_Event_UsageEventListResponse) -> Bool {
    if lhs.events != rhs.events {return false}
    if lhs._pagination != rhs._pagination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_GlobalEventSummaryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GlobalEventSummaryRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tenants"),
    2: .same(proto: "after"),
    3: .same(proto: "before"),
    5: .same(proto: "billableFunctions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.tenants) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._after) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._before) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.billableFunctions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.tenants.isEmpty {
      try visitor.visitRepeatedStringField(value: self.tenants, fieldNumber: 1)
    }
    try { if let v = self._after {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._before {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if !self.billableFunctions.isEmpty {
      try visitor.visitPackedEnumField(value: self.billableFunctions, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_GlobalEventSummaryRequest, rhs: Sensory_Api_V1_Event_GlobalEventSummaryRequest) -> Bool {
    if lhs.tenants != rhs.tenants {return false}
    if lhs._after != rhs._after {return false}
    if lhs._before != rhs._before {return false}
    if lhs.billableFunctions != rhs.billableFunctions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEventSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEventSummary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "summaries"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.summaries) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.summaries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.summaries, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEventSummary, rhs: Sensory_Api_V1_Event_UsageEventSummary) -> Bool {
    if lhs.summaries != rhs.summaries {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_UsageEventModelSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UsageEventModelSummary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "billableFunction"),
    2: .same(proto: "units"),
    3: .same(proto: "value"),
    4: .same(proto: "count"),
    5: .same(proto: "credits"),
    6: .same(proto: "tenantId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.billableFunction) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.units) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.value) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.count) }()
      case 5: try { try decoder.decodeSingularDoubleField(value: &self.credits) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.tenantID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.billableFunction != .unknown {
      try visitor.visitSingularEnumField(value: self.billableFunction, fieldNumber: 1)
    }
    if !self.units.isEmpty {
      try visitor.visitSingularStringField(value: self.units, fieldNumber: 2)
    }
    if self.value != 0 {
      try visitor.visitSingularInt64Field(value: self.value, fieldNumber: 3)
    }
    if self.count != 0 {
      try visitor.visitSingularInt64Field(value: self.count, fieldNumber: 4)
    }
    if self.credits != 0 {
      try visitor.visitSingularDoubleField(value: self.credits, fieldNumber: 5)
    }
    if !self.tenantID.isEmpty {
      try visitor.visitSingularStringField(value: self.tenantID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_UsageEventModelSummary, rhs: Sensory_Api_V1_Event_UsageEventModelSummary) -> Bool {
    if lhs.billableFunction != rhs.billableFunction {return false}
    if lhs.units != rhs.units {return false}
    if lhs.value != rhs.value {return false}
    if lhs.count != rhs.count {return false}
    if lhs.credits != rhs.credits {return false}
    if lhs.tenantID != rhs.tenantID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sensory_Api_V1_Event_PublishUsageEventsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublishUsageEventsResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sensory_Api_V1_Event_PublishUsageEventsResponse, rhs: Sensory_Api_V1_Event_PublishUsageEventsResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
