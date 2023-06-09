// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:collection/collection.dart';

part 'bridge_definitions.freezed.dart';

abstract class RustLdkNode {
  Future<NodePointer> buildNode(
      {required Config config, required ChainDataSourceConfig chainDataSourceConfig, EntropySourceConfig? entropySourceConfig, GossipSourceConfig? gossipSourceConfig, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBuildNodeConstMeta;

  /// Starts the necessary background tasks, such as handling events coming from user input,
  /// LDK/BDK, and the peer-to-peer network.
  ///
  /// After this returns, the [Node] instance can be controlled via the provided API methods in
  /// a thread-safe manner.
  Future<void> startMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStartMethodNodePointerConstMeta;

  /// Disconnects all peers, stops all running background tasks, and shuts down [Node].
  ///
  /// After this returns most API methods will throw NotRunning Exception.
  Future<void> stopMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStopMethodNodePointerConstMeta;

  /// Blocks until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via node.event_handled().
  Future<void> eventHandledMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kEventHandledMethodNodePointerConstMeta;

  /// Confirm the last retrieved event handled.
  ///
  /// **Note:** This **MUST** be called after each event has been handled.
  Future<Event?> nextEventMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNextEventMethodNodePointerConstMeta;

  /// Returns the next event in the event queue.
  ///
  /// Will block the current thread until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via [`Node::event_handled`].
  ///
  Future<Event> waitUntilNextEventMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWaitUntilNextEventMethodNodePointerConstMeta;

  /// Returns our own node id
  Future<PublicKey> nodeIdMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNodeIdMethodNodePointerConstMeta;

  /// Returns our own listening address.
  Future<NetAddress?> listeningAddressMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListeningAddressMethodNodePointerConstMeta;

  /// Retrieve a new on-chain/funding address.
  Future<Address> newFundingAddressMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewFundingAddressMethodNodePointerConstMeta;

  /// Retrieve the current on-chain balance.
  Future<Balance> onChainBalanceMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOnChainBalanceMethodNodePointerConstMeta;

  /// Send an on-chain payment to the given address.
  Future<Txid> sendToOnChainAddressMethodNodePointer({required NodePointer that, required Address address, required int amountSats, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendToOnChainAddressMethodNodePointerConstMeta;

  /// Send an on-chain payment to the given address, draining all the available funds.
  Future<Txid> sendAllToOnChainAddressMethodNodePointer({required NodePointer that, required Address address, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendAllToOnChainAddressMethodNodePointerConstMeta;

  /// Retrieve the currently spendable on-chain balance in satoshis.
  Future<int> spendableOnchainBalanceSatsMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSpendableOnchainBalanceSatsMethodNodePointerConstMeta;

  /// Retrieve the current total on-chain balance in satoshis.
  Future<int> totalOnchainBalanceSatsMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTotalOnchainBalanceSatsMethodNodePointerConstMeta;

  ///Retrieve a list of known channels.
  ///
  Future<List<ChannelDetails>> listChannelsMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListChannelsMethodNodePointerConstMeta;

  /// Connect to a node on the peer-to-peer network.
  ///
  /// If `permanently` is set to `true`, we'll remember the peer and reconnect to it on restart.
  Future<void> connectMethodNodePointer({required NodePointer that, required PublicKey nodeId, required NetAddress address, required bool permanently, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectMethodNodePointerConstMeta;

  /// Disconnects the peer with the given node id.
  ///
  /// Will also remove the peer from the peer store, i.e., after this has been called we won't
  /// try to reconnect on restart.
  Future<void> disconnectMethodNodePointer({required NodePointer that, required PublicKey counterpartyNodeId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDisconnectMethodNodePointerConstMeta;

  /// Connect to a node and open a new channel. Disconnects and re-connects are handled automatically
  ///
  /// Disconnects and reconnects are handled automatically.
  ///
  /// If `pushToCounterpartyMsat` is set, the given value will be pushed (read: sent) to the
  /// channel counterparty on channel open. This can be useful to start out with the balance not
  /// entirely shifted to one side, therefore allowing to receive payments from the getgo.
  ///
  /// Returns a temporary channel id.
  Future<void> connectOpenChannelMethodNodePointer(
      {required NodePointer that, required NetAddress address, required PublicKey nodeId, required int channelAmountSats, int? pushToCounterpartyMsat, required bool announceChannel, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectOpenChannelMethodNodePointerConstMeta;

  ///Sync the LDK and BDK wallets with the current chain state.
  Future<void> syncWalletsMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSyncWalletsMethodNodePointerConstMeta;

  /// Close a previously opened channel.
  Future<void> closeChannelMethodNodePointer({required NodePointer that, required ChannelId channelId, required PublicKey counterpartyNodeId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCloseChannelMethodNodePointerConstMeta;

  /// Send a payement given an invoice.
  Future<PaymentHash> sendPaymentMethodNodePointer({required NodePointer that, required Invoice invoice, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendPaymentMethodNodePointerConstMeta;

  /// Send a payment given an invoice and an amount in millisatoshi.
  ///
  /// This will fail if the amount given is less than the value required by the given invoice.
  ///
  /// This can be used to pay a so-called "zero-amount" invoice, i.e., an invoice that leaves the
  /// amount paid to be determined by the user.
  Future<PaymentHash> sendPaymentUsingAmountMethodNodePointer({required NodePointer that, required Invoice invoice, required int amountMsat, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendPaymentUsingAmountMethodNodePointerConstMeta;

  /// Send a spontaneous, aka. "keysend", payment
  Future<PaymentHash> sendSpontaneousPaymentMethodNodePointer({required NodePointer that, required int amountMsat, required PublicKey nodeId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendSpontaneousPaymentMethodNodePointerConstMeta;

  /// Returns a payable invoice that can be used to request and receive a payment of the amount
  /// given.
  Future<Invoice> receivePaymentMethodNodePointer({required NodePointer that, required int amountMsat, required String description, required int expirySecs, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReceivePaymentMethodNodePointerConstMeta;

  /// Returns a payable invoice that can be used to request and receive a payment for which the
  /// amount is to be determined by the user, also known as a "zero-amount" invoice.
  Future<Invoice> receiveVariableAmountPaymentMethodNodePointer({required NodePointer that, required String description, required int expirySecs, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReceiveVariableAmountPaymentMethodNodePointerConstMeta;

  /// Retrieve the details of a specific payment with the given hash.
  ///
  /// Returns `PaymentDetails` if the payment was known and `null` otherwise.
  Future<PaymentDetails?> paymentMethodNodePointer({required NodePointer that, required PaymentHash paymentHash, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPaymentMethodNodePointerConstMeta;

  /// Remove the payment with the given hash from the store.
  ///
  /// Returns `true` if the payment was present and `false` otherwise.
  Future<bool> removePaymentMethodNodePointer({required NodePointer that, required PaymentHash paymentHash, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRemovePaymentMethodNodePointerConstMeta;

  /// Retrieves all payments that match the given predicate.
  ///
  Future<List<PaymentDetails>> listPaymentsWithFilterMethodNodePointer({required NodePointer that, required PaymentDirection paymentDirection, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListPaymentsWithFilterMethodNodePointerConstMeta;

  /// Retrieves all payments.
  Future<List<PaymentDetails>> listPaymentsMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListPaymentsMethodNodePointerConstMeta;

  /// Retrieves a list of known peers.
  Future<List<PeerDetails>> listPeersMethodNodePointer({required NodePointer that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListPeersMethodNodePointerConstMeta;

  /// Creates a digital ECDSA signature of a message with the node's secret key.
  ///
  /// A receiver knowing the corresponding `PublicKey` (e.g. the node’s id) and the message
  /// can be sure that the signature was generated by the caller.
  /// Signatures are EC recoverable, meaning that given the message and the
  /// signature the PublicKey of the signer can be extracted.
  Future<String> signMessageMethodNodePointer({required NodePointer that, required Uint8List msg, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSignMessageMethodNodePointerConstMeta;

  /// Verifies that the given ECDSA signature was created for the given message with the
  /// secret key corresponding to the given public key.
  Future<bool> verifySignatureMethodNodePointer({required NodePointer that, required Uint8List msg, required String sig, required PublicKey pkey, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kVerifySignatureMethodNodePointerConstMeta;

  DropFnType get dropOpaqueMutexArcNodeSqliteStore;
  ShareFnType get shareOpaqueMutexArcNodeSqliteStore;
  OpaqueTypeFinalizer get MutexArcNodeSqliteStoreFinalizer;
}

@sealed
class MutexArcNodeSqliteStore extends FrbOpaque {
  final RustLdkNode bridge;
  MutexArcNodeSqliteStore.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueMutexArcNodeSqliteStore;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueMutexArcNodeSqliteStore;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.MutexArcNodeSqliteStoreFinalizer;
}

/// A Bitcoin address.
class Address {
  final String addressHex;

  const Address({
    required this.addressHex,
  });
}

///Balance differentiated in various categories
class Balance {
  /// All coinbase outputs not yet matured
  final int immature;

  /// Unconfirmed UTXOs generated by a wallet tx
  final int trustedPending;

  /// Unconfirmed UTXOs received from an external wallet
  final int untrustedPending;

  /// Confirmed and immediately spendable balance
  final int confirmed;

  const Balance({
    required this.immature,
    required this.trustedPending,
    required this.untrustedPending,
    required this.confirmed,
  });
}

@freezed
class ChainDataSourceConfig with _$ChainDataSourceConfig {
  const factory ChainDataSourceConfig.esplora(
    String field0,
  ) = ChainDataSourceConfig_Esplora;
}

/// Details of a channel, as returned by node.listChannels()
class ChannelDetails {
  /// The channel's ID (prior to funding transaction generation, this is a random 32 bytes,
  /// thereafter this is the txid of the funding transaction xor the funding transaction output).
  /// Note that this means this value is *not* persistent - it can change once during the
  /// lifetime of the channel.
  final ChannelId channelId;

  /// The Channel's funding transaction output, if we've negotiated the funding transaction with
  /// our counterparty already.
  ///
  final String? fundingTxo;

  /// The position of the funding transaction in the chain. None if the funding transaction has
  /// not yet been confirmed and the channel fully opened.
  ///
  /// For channels with `confirmationsrequired` set to `Some(0)`, `outboundScidAlias` may
  /// be used in place of this in outbound routes.
  ///
  final int? shortChannelId;

  /// An optional `shortChannelId` alias for this channel, randomly generated by us and
  /// usable in place of `shortChannelId` to reference the channel in outbound routes when
  /// the channel has not yet been confirmed (as long as `confirmationsRequired` is
  /// `Some(0)`).
  ///
  /// This will be `None` as long as the channel is not available for routing outbound payments.
  ///
  final int? outboundScidAlias;

  /// An optional `shortChannelId` alias for this channel, randomly generated by our
  /// counterparty and usable in place of `shortChannelId` in invoice route hints. Our
  /// counterparty will recognize the alias provided here in place of the `shortChannelId`
  /// when they see a payment to be routed to us.
  ///
  /// Our counterparty may choose to rotate this value at any time, though will always recognize
  /// previous values for inbound payment forwarding.
  ///
  final int? inboundScidAlias;

  /// The value, in satoshis, of this channel as appears in the funding output
  final int channelValueSatoshis;

  /// The value, in satoshis, that must always be held in the channel for us. This value ensures
  /// that if we broadcast a revoked state, our counterparty can punish us by claiming at least
  /// this value on chain.
  ///
  /// This value is not included in `outbound_capacity_msat` as it can never be spent.
  ///
  /// This value will be null for outbound channels until the counterparty accepts the channel.
  ///
  final int? unspendablePunishmentReserve;

  /// The userChannelId passed in to create_channel, or a random value if the channel was
  /// inbound. This may be zero for inbound channels serialized with LDK versions prior to
  /// 0.0.113.
  final UserChannelId userChannelId;

  /// The currently negotiated fee rate denominated in satoshi per 1000 weight units,
  /// which is applied to commitment and HTLC transactions.
  ///
  /// This value will be null for objects serialized with LDK versions prior to 0.0.115.
  final int feerateSatPer1000Weight;

  /// Our total balance.  This is the amount we would get if we close the channel.
  /// This value is not exact. Due to various in-flight changes and feerate changes, exactly this
  /// amount is not likely to be recoverable on close.
  ///
  /// This does not include any pending HTLCs which are not yet fully resolved (and, thus, whose
  /// balance is not available for inclusion in new outbound HTLCs). This further does not include
  /// any pending outgoing HTLCs which are awaiting some other resolution to be sent.
  /// This does not consider any on-chain fees.
  ///
  final int balanceMsat;

  /// The available outbound capacity for sending HTLCs to the remote peer. This does not include
  /// any pending HTLCs which are not yet fully resolved (and, thus, whose balance is not
  /// available for inclusion in new outbound HTLCs). This further does not include any pending
  /// outgoing HTLCs which are awaiting some other resolution to be sent.
  ///
  /// This value is not exact. Due to various in-flight changes, feerate changes, and our
  /// conflict-avoidance policy, exactly this amount is not likely to be spendable. However, we
  /// should be able to spend nearly this amount.
  final int outboundCapacityMsat;

  /// The available outbound capacity for sending a single HTLC to the remote peer.This is intended for use when routing, allowing us
  /// to use a limit as close as possible to the HTLC limit we can currently send.
  ///
  final int nextOutboundHtlcLimitMsat;

  /// The available inbound capacity for the remote peer to send HTLCs to us. This does not
  /// include any pending HTLCs which are not yet fully resolved (and, thus, whose balance is not
  /// available for inclusion in new inbound HTLCs).
  /// Note that there are some corner cases not fully handled here, so the actual available
  /// inbound capacity may be slightly higher than this.
  ///
  /// This value is not exact. Due to various in-flight changes, feerate changes, and our
  /// counterparty's conflict-avoidance policy, exactly this amount is not likely to be spendable.
  /// However, our counterparty should be able to spend nearly this amount.
  final int inboundCapacityMsat;

  /// The number of required confirmations on the funding transaction before the funding will be
  /// considered "locked". This number is selected by the channel fundee, and can be selected for inbound channels with
  /// This value will be null for outbound channels until the counterparty accepts the channel.
  ///
  final int? confirmationsRequired;

  /// The current number of confirmations on the funding transaction.
  ///
  /// This value will be `None` for objects serialized with LDK versions prior to 0.0.113.
  final int? confirmations;

  /// The number of blocks (after our commitment transaction confirms) that we will need to wait
  /// until we can claim our funds after we force-close the channel. During this time our
  /// counterparty is allowed to punish us if we broadcasted a stale state. If our counterparty
  /// force-closes the channel and broadcasts a commitment transaction we do not have to wait any
  /// time to claim our non-HTLC-encumbered funds.
  ///
  /// This value will be null for outbound channels until the counterparty accepts the channel.
  final int? forceCloseSpendDelay;

  /// True if the channel was initiated (and thus funded) by us.
  final bool isOutbound;

  /// True if the channel is confirmed, channelReady messages have been exchanged, and the
  /// channel is not currently being shut down. `channelReady` message exchange implies the
  /// required confirmation count has been reached (and we were connected to the peer at some
  /// point after the funding transaction received enough confirmations). The required
  final bool isChannelReady;

  /// True if the channel is (a) confirmed and channelReady messages have been exchanged, (b)
  /// the peer is connected, and (c) the channel is not currently negotiating a shutdown.
  ///
  /// This is a strict superset of `isChannelReady`.
  final bool isUsable;

  /// True if this channel is (or will be) publicly-announced.
  final bool isPublic;

  /// The smallest value HTLC (in msat) we will accept, for this channel. This field
  /// is only `None` for `ChannelDetails` objects serialized prior to LDK 0.0.107
  final int? inboundHtlcMinimumMsat;

  /// The largest value HTLC (in msat) we currently will accept, for this channel.
  final int? inboundHtlcMaximumMsat;

  const ChannelDetails({
    required this.channelId,
    this.fundingTxo,
    this.shortChannelId,
    this.outboundScidAlias,
    this.inboundScidAlias,
    required this.channelValueSatoshis,
    this.unspendablePunishmentReserve,
    required this.userChannelId,
    required this.feerateSatPer1000Weight,
    required this.balanceMsat,
    required this.outboundCapacityMsat,
    required this.nextOutboundHtlcLimitMsat,
    required this.inboundCapacityMsat,
    this.confirmationsRequired,
    this.confirmations,
    this.forceCloseSpendDelay,
    required this.isOutbound,
    required this.isChannelReady,
    required this.isUsable,
    required this.isPublic,
    this.inboundHtlcMinimumMsat,
    this.inboundHtlcMaximumMsat,
  });
}

class ChannelId {
  final U8Array32 field0;

  const ChannelId({
    required this.field0,
  });
}

/// Represents the configuration of an [Node] instance.
///
class Config {
  String storageDirPath;

  /// The used Bitcoin network.
  Network network;

  ///The time in-between background sync attempts of the onchain wallet, in seconds.
  int onchainWalletSyncIntervalSecs;

  /// The time in-between background sync attempts of the LDK wallet, in seconds.
  /// Note: A minimum of 10 seconds is always enforced.
  int walletSyncIntervalSecs;

  ///The time in-between background update attempts to our fee rate cache, in seconds.
  /// Note: A minimum of 10 seconds is always enforced.
  int feeRateCacheUpdateIntervalSecs;

  ///The level at which we log messages.
  /// Any messages below this level will be excluded from the logs.
  LogLevel logLevel;

  /// The IP address and TCP port the node will listen on.
  NetAddress? listeningAddress;

  /// The default CLTV expiry delta to be used for payments.
  int defaultCltvExpiryDelta;

  Config({
    required this.storageDirPath,
    required this.network,
    required this.onchainWalletSyncIntervalSecs,
    required this.walletSyncIntervalSecs,
    required this.feeRateCacheUpdateIntervalSecs,
    required this.logLevel,
    this.listeningAddress,
    required this.defaultCltvExpiryDelta,
  });
}

@freezed
class EntropySourceConfig with _$EntropySourceConfig {
  const factory EntropySourceConfig.seedFile(
    String field0,
  ) = EntropySourceConfig_SeedFile;
  const factory EntropySourceConfig.seedBytes(
    U8Array64 field0,
  ) = EntropySourceConfig_SeedBytes;
  const factory EntropySourceConfig.bip39Mnemonic({
    required Mnemonic mnemonic,
    String? passphrase,
  }) = EntropySourceConfig_Bip39Mnemonic;
}

@freezed
class Event with _$Event {
  /// A sent payment was successful.
  const factory Event.paymentSuccessful({
    /// The hash of the payment.
    required PaymentHash paymentHash,
  }) = Event_PaymentSuccessful;

  /// A sent payment has failed.
  const factory Event.paymentFailed({
    /// The hash of the payment.
    required PaymentHash paymentHash,
  }) = Event_PaymentFailed;

  /// A payment has been received.
  const factory Event.paymentReceived({
    /// The hash of the payment.
    required PaymentHash paymentHash,

    /// The value, in thousandths of a satoshi, that has been received.
    required int amountMsat,
  }) = Event_PaymentReceived;

  /// A channel is ready to be used.
  const factory Event.channelReady({
    /// The channel_id of the channel.
    required ChannelId channelId,

    /// The user_channel_id of the channel.
    required UserChannelId userChannelId,
  }) = Event_ChannelReady;

  /// A channel has been closed.
  const factory Event.channelClosed({
    /// The channel_id of the channel.
    required ChannelId channelId,

    /// The user_channel_id of the channel.
    required UserChannelId userChannelId,
  }) = Event_ChannelClosed;

  /// A channel has been created and is pending confirmation on-chain.
  const factory Event.channelPending({
    /// The channel_id of the channel.
    required ChannelId channelId,

    /// The user_channel_id of the channel.
    required UserChannelId userChannelId,

    /// The temporary_channel_id this channel used to be known by during channel establishment.
    required ChannelId formerTemporaryChannelId,

    /// The node_id of the channel counterparty.
    required PublicKey counterpartyNodeId,

    /// The outpoint of the channel's funding transaction.
    required OutPoint fundingTxo,
  }) = Event_ChannelPending;
}

@freezed
class GossipSourceConfig with _$GossipSourceConfig {
  const factory GossipSourceConfig.p2PNetwork() = GossipSourceConfig_P2PNetwork;
  const factory GossipSourceConfig.rapidGossipSync(
    String field0,
  ) = GossipSourceConfig_RapidGossipSync;
}

///Represents a syntactically and semantically correct lightning BOLT11 invoice.
class Invoice {
  final String hex;

  const Invoice({
    required this.hex,
  });
}

/// An enum representing the available verbosity levels of the logger.
enum LogLevel {
  /// Designates extremely verbose information, including gossip-induced messages
  gossip,

  /// Designates very low priority, often extremely verbose, information
  trace,

  /// Designates lower priority information
  debug,

  /// Designates useful information
  info,

  /// Designates hazardous situations
  warn,

  /// Designates very serious errors
  error,
}

class Mnemonic {
  final String internal;

  const Mnemonic({
    required this.internal,
  });
}

@freezed
class NetAddress with _$NetAddress {
  const factory NetAddress.iPv4({
    required String addr,
    required int port,
  }) = NetAddress_IPv4;
  const factory NetAddress.iPv6({
    required String addr,
    required int port,
  }) = NetAddress_IPv6;
}

/// Bitcoin network enum
enum Network {
  ///Classic Bitcoin
  bitcoin,

  ///Bitcoin’s testnet
  testnet,

  ///Bitcoin’s signet
  signet,

  ///Bitcoin’s regtest
  regtest,
}

///The main interface object of LDK Node, wrapping the necessary LDK and BDK functionalities.
///
///Needs to be initialized and instantiated through builder.build().
class NodePointer {
  final RustLdkNode bridge;
  final MutexArcNodeSqliteStore field0;

  const NodePointer({
    required this.bridge,
    required this.field0,
  });

  /// Starts the necessary background tasks, such as handling events coming from user input,
  /// LDK/BDK, and the peer-to-peer network.
  ///
  /// After this returns, the [Node] instance can be controlled via the provided API methods in
  /// a thread-safe manner.
  Future<void> start({dynamic hint}) => bridge.startMethodNodePointer(
        that: this,
      );

  /// Disconnects all peers, stops all running background tasks, and shuts down [Node].
  ///
  /// After this returns most API methods will throw NotRunning Exception.
  Future<void> stop({dynamic hint}) => bridge.stopMethodNodePointer(
        that: this,
      );

  /// Blocks until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via node.event_handled().
  Future<void> eventHandled({dynamic hint}) => bridge.eventHandledMethodNodePointer(
        that: this,
      );

  /// Confirm the last retrieved event handled.
  ///
  /// **Note:** This **MUST** be called after each event has been handled.
  Future<Event?> nextEvent({dynamic hint}) => bridge.nextEventMethodNodePointer(
        that: this,
      );

  /// Returns the next event in the event queue.
  ///
  /// Will block the current thread until the next event is available.
  ///
  /// **Note:** this will always return the same event until handling is confirmed via [`Node::event_handled`].
  ///
  Future<Event> waitUntilNextEvent({dynamic hint}) => bridge.waitUntilNextEventMethodNodePointer(
        that: this,
      );

  /// Returns our own node id
  Future<PublicKey> nodeId({dynamic hint}) => bridge.nodeIdMethodNodePointer(
        that: this,
      );

  /// Returns our own listening address.
  Future<NetAddress?> listeningAddress({dynamic hint}) => bridge.listeningAddressMethodNodePointer(
        that: this,
      );

  /// Retrieve a new on-chain/funding address.
  Future<Address> newFundingAddress({dynamic hint}) => bridge.newFundingAddressMethodNodePointer(
        that: this,
      );

  /// Retrieve the current on-chain balance.
  Future<Balance> onChainBalance({dynamic hint}) => bridge.onChainBalanceMethodNodePointer(
        that: this,
      );

  /// Send an on-chain payment to the given address.
  Future<Txid> sendToOnChainAddress({required Address address, required int amountSats, dynamic hint}) => bridge.sendToOnChainAddressMethodNodePointer(
        that: this,
        address: address,
        amountSats: amountSats,
      );

  /// Send an on-chain payment to the given address, draining all the available funds.
  Future<Txid> sendAllToOnChainAddress({required Address address, dynamic hint}) => bridge.sendAllToOnChainAddressMethodNodePointer(
        that: this,
        address: address,
      );

  /// Retrieve the currently spendable on-chain balance in satoshis.
  Future<int> spendableOnchainBalanceSats({dynamic hint}) => bridge.spendableOnchainBalanceSatsMethodNodePointer(
        that: this,
      );

  /// Retrieve the current total on-chain balance in satoshis.
  Future<int> totalOnchainBalanceSats({dynamic hint}) => bridge.totalOnchainBalanceSatsMethodNodePointer(
        that: this,
      );

  ///Retrieve a list of known channels.
  ///
  Future<List<ChannelDetails>> listChannels({dynamic hint}) => bridge.listChannelsMethodNodePointer(
        that: this,
      );

  /// Connect to a node on the peer-to-peer network.
  ///
  /// If `permanently` is set to `true`, we'll remember the peer and reconnect to it on restart.
  Future<void> connect({required PublicKey nodeId, required NetAddress address, required bool permanently, dynamic hint}) => bridge.connectMethodNodePointer(
        that: this,
        nodeId: nodeId,
        address: address,
        permanently: permanently,
      );

  /// Disconnects the peer with the given node id.
  ///
  /// Will also remove the peer from the peer store, i.e., after this has been called we won't
  /// try to reconnect on restart.
  Future<void> disconnect({required PublicKey counterpartyNodeId, dynamic hint}) => bridge.disconnectMethodNodePointer(
        that: this,
        counterpartyNodeId: counterpartyNodeId,
      );

  /// Connect to a node and open a new channel. Disconnects and re-connects are handled automatically
  ///
  /// Disconnects and reconnects are handled automatically.
  ///
  /// If `pushToCounterpartyMsat` is set, the given value will be pushed (read: sent) to the
  /// channel counterparty on channel open. This can be useful to start out with the balance not
  /// entirely shifted to one side, therefore allowing to receive payments from the getgo.
  ///
  /// Returns a temporary channel id.
  Future<void> connectOpenChannel({required NetAddress address, required PublicKey nodeId, required int channelAmountSats, int? pushToCounterpartyMsat, required bool announceChannel, dynamic hint}) =>
      bridge.connectOpenChannelMethodNodePointer(
        that: this,
        address: address,
        nodeId: nodeId,
        channelAmountSats: channelAmountSats,
        pushToCounterpartyMsat: pushToCounterpartyMsat,
        announceChannel: announceChannel,
      );

  ///Sync the LDK and BDK wallets with the current chain state.
  Future<void> syncWallets({dynamic hint}) => bridge.syncWalletsMethodNodePointer(
        that: this,
      );

  /// Close a previously opened channel.
  Future<void> closeChannel({required ChannelId channelId, required PublicKey counterpartyNodeId, dynamic hint}) => bridge.closeChannelMethodNodePointer(
        that: this,
        channelId: channelId,
        counterpartyNodeId: counterpartyNodeId,
      );

  /// Send a payement given an invoice.
  Future<PaymentHash> sendPayment({required Invoice invoice, dynamic hint}) => bridge.sendPaymentMethodNodePointer(
        that: this,
        invoice: invoice,
      );

  /// Send a payment given an invoice and an amount in millisatoshi.
  ///
  /// This will fail if the amount given is less than the value required by the given invoice.
  ///
  /// This can be used to pay a so-called "zero-amount" invoice, i.e., an invoice that leaves the
  /// amount paid to be determined by the user.
  Future<PaymentHash> sendPaymentUsingAmount({required Invoice invoice, required int amountMsat, dynamic hint}) => bridge.sendPaymentUsingAmountMethodNodePointer(
        that: this,
        invoice: invoice,
        amountMsat: amountMsat,
      );

  /// Send a spontaneous, aka. "keysend", payment
  Future<PaymentHash> sendSpontaneousPayment({required int amountMsat, required PublicKey nodeId, dynamic hint}) => bridge.sendSpontaneousPaymentMethodNodePointer(
        that: this,
        amountMsat: amountMsat,
        nodeId: nodeId,
      );

  /// Returns a payable invoice that can be used to request and receive a payment of the amount
  /// given.
  Future<Invoice> receivePayment({required int amountMsat, required String description, required int expirySecs, dynamic hint}) => bridge.receivePaymentMethodNodePointer(
        that: this,
        amountMsat: amountMsat,
        description: description,
        expirySecs: expirySecs,
      );

  /// Returns a payable invoice that can be used to request and receive a payment for which the
  /// amount is to be determined by the user, also known as a "zero-amount" invoice.
  Future<Invoice> receiveVariableAmountPayment({required String description, required int expirySecs, dynamic hint}) => bridge.receiveVariableAmountPaymentMethodNodePointer(
        that: this,
        description: description,
        expirySecs: expirySecs,
      );

  /// Retrieve the details of a specific payment with the given hash.
  ///
  /// Returns `PaymentDetails` if the payment was known and `null` otherwise.
  Future<PaymentDetails?> payment({required PaymentHash paymentHash, dynamic hint}) => bridge.paymentMethodNodePointer(
        that: this,
        paymentHash: paymentHash,
      );

  /// Remove the payment with the given hash from the store.
  ///
  /// Returns `true` if the payment was present and `false` otherwise.
  Future<bool> removePayment({required PaymentHash paymentHash, dynamic hint}) => bridge.removePaymentMethodNodePointer(
        that: this,
        paymentHash: paymentHash,
      );

  /// Retrieves all payments that match the given predicate.
  ///
  Future<List<PaymentDetails>> listPaymentsWithFilter({required PaymentDirection paymentDirection, dynamic hint}) => bridge.listPaymentsWithFilterMethodNodePointer(
        that: this,
        paymentDirection: paymentDirection,
      );

  /// Retrieves all payments.
  Future<List<PaymentDetails>> listPayments({dynamic hint}) => bridge.listPaymentsMethodNodePointer(
        that: this,
      );

  /// Retrieves a list of known peers.
  Future<List<PeerDetails>> listPeers({dynamic hint}) => bridge.listPeersMethodNodePointer(
        that: this,
      );

  /// Creates a digital ECDSA signature of a message with the node's secret key.
  ///
  /// A receiver knowing the corresponding `PublicKey` (e.g. the node’s id) and the message
  /// can be sure that the signature was generated by the caller.
  /// Signatures are EC recoverable, meaning that given the message and the
  /// signature the PublicKey of the signer can be extracted.
  Future<String> signMessage({required Uint8List msg, dynamic hint}) => bridge.signMessageMethodNodePointer(
        that: this,
        msg: msg,
      );

  /// Verifies that the given ECDSA signature was created for the given message with the
  /// secret key corresponding to the given public key.
  Future<bool> verifySignature({required Uint8List msg, required String sig, required PublicKey pkey, dynamic hint}) => bridge.verifySignatureMethodNodePointer(
        that: this,
        msg: msg,
        sig: sig,
        pkey: pkey,
      );
}

///A reference to a transaction output.
class OutPoint {
  final Txid txid;
  final int vout;

  const OutPoint({
    required this.txid,
    required this.vout,
  });
}

/// Represents a payment.
class PaymentDetails {
  /// The payment hash, i.e., the hash of the `preimage`.
  final PaymentHash hash;

  /// The pre-image used by the payment.
  final PaymentPreimage? preimage;

  /// The secret used by the payment.
  final PaymentSecret? secret;

  /// The amount transferred.
  final int? amountMsat;

  /// The direction of the payment.
  final PaymentDirection direction;

  /// The status of the payment.
  final PaymentStatus status;

  const PaymentDetails({
    required this.hash,
    this.preimage,
    this.secret,
    this.amountMsat,
    required this.direction,
    required this.status,
  });
}

/// Represents the direction of a payment.
enum PaymentDirection {
  /// The payment is inbound.
  inbound,

  /// The payment is outbound.
  outbound,
}

/// paymentHash type, use to cross-lock hop
///
class PaymentHash {
  final U8Array32 field0;

  const PaymentHash({
    required this.field0,
  });
}

/// paymentPreimage type, use to route payment between hop
///
class PaymentPreimage {
  final U8Array32 field0;

  const PaymentPreimage({
    required this.field0,
  });
}

/// payment_secret type, use to authenticate sender to the receiver and tie MPP HTLCs together
///
class PaymentSecret {
  final U8Array32 field0;

  const PaymentSecret({
    required this.field0,
  });
}

/// Represents the current status of a payment.
enum PaymentStatus {
  /// The payment is still pending.
  pending,

  /// The payment suceeded.
  succeeded,

  /// The payment failed.
  failed,

  /// The sending of the payment failed and is safe to be retried.
  sendingFailed,
}

/// Details of a known Lightning peer as returned by [`Node::list_peers`].
///
/// [`Node::list_peers`]: [`crate::Node::list_peers`]
class PeerDetails {
  /// Our peer's node ID.
  final PublicKey nodeId;

  /// The IP address and TCP port of the peer.
  final NetAddress address;

  /// Indicates whether or not the user is currently has an active connection with the peer.
  final bool isConnected;

  const PeerDetails({
    required this.nodeId,
    required this.address,
    required this.isConnected,
  });
}

class PublicKey {
  final String keyHex;

  const PublicKey({
    required this.keyHex,
  });
}

///A bitcoin transaction hash/transaction ID.
///
class Txid {
  final String field0;

  const Txid({
    required this.field0,
  });
}

class U8Array32 extends NonGrowableListView<int> {
  static const arraySize = 32;
  U8Array32(Uint8List inner)
      : assert(inner.length == arraySize),
        super(inner);
  U8Array32.unchecked(Uint8List inner) : super(inner);
  U8Array32.init() : super(Uint8List(arraySize));
}

class U8Array64 extends NonGrowableListView<int> {
  static const arraySize = 64;
  U8Array64(Uint8List inner)
      : assert(inner.length == arraySize),
        super(inner);
  U8Array64.unchecked(Uint8List inner) : super(inner);
  U8Array64.init() : super(Uint8List(arraySize));
}

///A local, potentially user-provided, identifier of a channel.
///
/// By default, this will be randomly generated for the user to ensure local uniqueness.
class UserChannelId {
  final int field0;

  const UserChannelId({
    required this.field0,
  });
}
