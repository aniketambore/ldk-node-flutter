// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../lib.dart';
import '../utils/error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'types.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `from`, `from`, `from`, `from`, `from`, `from`, `from`, `try_from`

///Details about a channel (both directions). Received within a channel announcement.
class ChannelInfo {
  ///Source node of the first direction of a channel
  final NodeId nodeOne;

  ///Details about the first direction of a channel
  final ChannelUpdateInfo? oneToTwo;

  ///Source node of the second direction of a channel
  final NodeId nodeTwo;

  ///Details about the second direction of a channel
  final ChannelUpdateInfo? twoToOne;

  ///The channel capacity as seen on-chain, if chain lookup is available.
  final BigInt? capacitySats;

  const ChannelInfo({
    required this.nodeOne,
    this.oneToTwo,
    required this.nodeTwo,
    this.twoToOne,
    this.capacitySats,
  });

  @override
  int get hashCode =>
      nodeOne.hashCode ^
      oneToTwo.hashCode ^
      nodeTwo.hashCode ^
      twoToOne.hashCode ^
      capacitySats.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelInfo &&
          runtimeType == other.runtimeType &&
          nodeOne == other.nodeOne &&
          oneToTwo == other.oneToTwo &&
          nodeTwo == other.nodeTwo &&
          twoToOne == other.twoToOne &&
          capacitySats == other.capacitySats;
}

class ChannelUpdateInfo {
  ///When the last update to the channel direction was issued. Value is opaque, as set in the announcement.
  final int lastUpdate;

  ///Whether the channel can be currently used for payments (in this one direction).
  final bool enabled;

  ///The difference in CLTV values that you must have when routing through this channel.
  final int cltvExpiryDelta;

  ///The minimum value, which must be relayed to the next hop via the channel
  final BigInt htlcMinimumMsat;

  ///The maximum value which may be relayed to the next hop via the channel.
  final BigInt htlcMaximumMsat;
  final RoutingFees fees;

  const ChannelUpdateInfo({
    required this.lastUpdate,
    required this.enabled,
    required this.cltvExpiryDelta,
    required this.htlcMinimumMsat,
    required this.htlcMaximumMsat,
    required this.fees,
  });

  @override
  int get hashCode =>
      lastUpdate.hashCode ^
      enabled.hashCode ^
      cltvExpiryDelta.hashCode ^
      htlcMinimumMsat.hashCode ^
      htlcMaximumMsat.hashCode ^
      fees.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelUpdateInfo &&
          runtimeType == other.runtimeType &&
          lastUpdate == other.lastUpdate &&
          enabled == other.enabled &&
          cltvExpiryDelta == other.cltvExpiryDelta &&
          htlcMinimumMsat == other.htlcMinimumMsat &&
          htlcMaximumMsat == other.htlcMaximumMsat &&
          fees == other.fees;
}

class LdkNetworkGraph {
  final NetworkGraph ptr;

  const LdkNetworkGraph({
    required this.ptr,
  });

  /// Returns information on a channel with the given id.
  Future<ChannelInfo?> channel({required BigInt shortChannelId}) =>
      core.instance.api.crateApiGraphLdkNetworkGraphChannel(
          that: this, shortChannelId: shortChannelId);

  /// Returns the list of channels in the graph
  Future<Uint64List> listChannels() =>
      core.instance.api.crateApiGraphLdkNetworkGraphListChannels(
        that: this,
      );

  /// Returns the list of nodes in the graph
  Future<List<NodeId>> listNodes() =>
      core.instance.api.crateApiGraphLdkNetworkGraphListNodes(
        that: this,
      );

  Future<NodeInfo?> node({required NodeId nodeId}) => core.instance.api
      .crateApiGraphLdkNetworkGraphNode(that: this, nodeId: nodeId);

  @override
  int get hashCode => ptr.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LdkNetworkGraph &&
          runtimeType == other.runtimeType &&
          ptr == other.ptr;
}

class NodeAnnouncementInfo {
  /// When the last known update to the node state was issued.
  /// Value is opaque, as set in the announcement.
  final int lastUpdate;

  /// Moniker assigned to the node.
  /// May be invalid or malicious (eg control chars),
  /// should not be exposed to the user.
  final String alias;

  /// List of addresses on which this node is reachable
  final List<SocketAddress> addresses;

  const NodeAnnouncementInfo({
    required this.lastUpdate,
    required this.alias,
    required this.addresses,
  });

  @override
  int get hashCode => lastUpdate.hashCode ^ alias.hashCode ^ addresses.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeAnnouncementInfo &&
          runtimeType == other.runtimeType &&
          lastUpdate == other.lastUpdate &&
          alias == other.alias &&
          addresses == other.addresses;
}

///Represents the compressed public key of a node
class NodeId {
  final Uint8List compressed;

  const NodeId({
    required this.compressed,
  });

  @override
  int get hashCode => compressed.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeId &&
          runtimeType == other.runtimeType &&
          compressed == other.compressed;
}

///Details about a node in the network, known from the network announcement.
class NodeInfo {
  final Uint64List channels;

  ///More information about a node from node_announcement. Optional because we store a Node entry after learning about it from a channel announcement, but before receiving a node announcement.
  final NodeAnnouncementInfo? announcementInfo;

  const NodeInfo({
    required this.channels,
    this.announcementInfo,
  });

  @override
  int get hashCode => channels.hashCode ^ announcementInfo.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeInfo &&
          runtimeType == other.runtimeType &&
          channels == other.channels &&
          announcementInfo == other.announcementInfo;
}

///Fees for routing via a given channel or a node
class RoutingFees {
  ///Flat routing fee in millisatoshis.
  final int baseMsat;

  ///Liquidity-based routing fee in millionths of a routed amount. In other words, 10000 is 1%.
  final int proportionalMillionths;

  const RoutingFees({
    required this.baseMsat,
    required this.proportionalMillionths,
  });

  @override
  int get hashCode => baseMsat.hashCode ^ proportionalMillionths.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoutingFees &&
          runtimeType == other.runtimeType &&
          baseMsat == other.baseMsat &&
          proportionalMillionths == other.proportionalMillionths;
}