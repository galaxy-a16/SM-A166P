.class public Lorg/bouncycastle/operator/bc/BcRSAContentSignerBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {p0, p2}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/crypto/signers/RSADigestSigner;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object p1
.end method
