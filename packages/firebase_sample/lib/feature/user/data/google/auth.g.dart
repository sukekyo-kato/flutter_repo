// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$googleSignInHash() => r'33e2d830c18590dbfdef7f4796eb1120b7e87104';

/// See also [googleSignIn].
@ProviderFor(googleSignIn)
final googleSignInProvider = Provider<dynamic>.internal(
  googleSignIn,
  name: r'googleSignInProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$googleSignInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoogleSignInRef = ProviderRef<dynamic>;
String _$userCredentialHash() => r'8ed7f95b46f384cbbff1e7ee49908c2d90d35217';

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

typedef UserCredentialRef = AutoDisposeProviderRef<OAuthCredential>;

/// See also [userCredential].
@ProviderFor(userCredential)
const userCredentialProvider = UserCredentialFamily();

/// See also [userCredential].
class UserCredentialFamily extends Family<OAuthCredential> {
  /// See also [userCredential].
  const UserCredentialFamily();

  /// See also [userCredential].
  UserCredentialProvider call(
    dynamic auth,
  ) {
    return UserCredentialProvider(
      auth,
    );
  }

  @override
  UserCredentialProvider getProviderOverride(
    covariant UserCredentialProvider provider,
  ) {
    return call(
      provider.auth,
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
  String? get name => r'userCredentialProvider';
}

/// See also [userCredential].
class UserCredentialProvider extends AutoDisposeProvider<OAuthCredential> {
  /// See also [userCredential].
  UserCredentialProvider(
    this.auth,
  ) : super.internal(
          (ref) => userCredential(
            ref,
            auth,
          ),
          from: userCredentialProvider,
          name: r'userCredentialProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userCredentialHash,
          dependencies: UserCredentialFamily._dependencies,
          allTransitiveDependencies:
              UserCredentialFamily._allTransitiveDependencies,
        );

  final dynamic auth;

  @override
  bool operator ==(Object other) {
    return other is UserCredentialProvider && other.auth == auth;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, auth.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
