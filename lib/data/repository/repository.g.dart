// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'2b784e2965e872f3a3477d4f85949e8414e88504';

/// See also [repository].
@ProviderFor(repository)
final repositoryProvider = AutoDisposeProvider<Repository>.internal(
  repository,
  name: r'repositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RepositoryRef = AutoDisposeProviderRef<Repository>;
String _$sendMessageHash() => r'908839950c9150af1c5bae18d56c2ea31d12b865';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [sendMessage].
@ProviderFor(sendMessage)
const sendMessageProvider = SendMessageFamily();

/// See also [sendMessage].
class SendMessageFamily extends Family<AsyncValue<List<ChatChoice>>> {
  /// See also [sendMessage].
  const SendMessageFamily();

  /// See also [sendMessage].
  SendMessageProvider call(
    String message,
  ) {
    return SendMessageProvider(
      message,
    );
  }

  @override
  SendMessageProvider getProviderOverride(
    covariant SendMessageProvider provider,
  ) {
    return call(
      provider.message,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sendMessageProvider';
}

/// See also [sendMessage].
class SendMessageProvider extends AutoDisposeFutureProvider<List<ChatChoice>> {
  /// See also [sendMessage].
  SendMessageProvider(
    String message,
  ) : this._internal(
          (ref) => sendMessage(
            ref as SendMessageRef,
            message,
          ),
          from: sendMessageProvider,
          name: r'sendMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sendMessageHash,
          dependencies: SendMessageFamily._dependencies,
          allTransitiveDependencies:
              SendMessageFamily._allTransitiveDependencies,
          message: message,
        );

  SendMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.message,
  }) : super.internal();

  final String message;

  @override
  Override overrideWith(
    FutureOr<List<ChatChoice>> Function(SendMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SendMessageProvider._internal(
        (ref) => create(ref as SendMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        message: message,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ChatChoice>> createElement() {
    return _SendMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendMessageProvider && other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SendMessageRef on AutoDisposeFutureProviderRef<List<ChatChoice>> {
  /// The parameter `message` of this provider.
  String get message;
}

class _SendMessageProviderElement
    extends AutoDisposeFutureProviderElement<List<ChatChoice>>
    with SendMessageRef {
  _SendMessageProviderElement(super.provider);

  @override
  String get message => (origin as SendMessageProvider).message;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
