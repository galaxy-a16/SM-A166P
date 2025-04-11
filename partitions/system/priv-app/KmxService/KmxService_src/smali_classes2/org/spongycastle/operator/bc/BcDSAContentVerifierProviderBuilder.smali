.class public Lorg/spongycastle/operator/bc/BcDSAContentVerifierProviderBuilder;
.super Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;
.source "SourceFile"


# instance fields
.field private digestAlgorithmFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcDSAContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/Signer;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcDSAContentVerifierProviderBuilder;->digestAlgorithmFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;

    invoke-interface {p0, p1}, Lorg/spongycastle/operator/bc/BcDigestProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/ExtendedDigest;

    move-result-object p0

    new-instance p1, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    new-instance v0, Lorg/spongycastle/crypto/signers/DSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    return-object p1
.end method

.method public extractKeyParameters(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    return-object p0
.end method
