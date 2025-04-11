.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# static fields
.field private static DEFAULT_SBOX:[B


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x9t
        0xdt
        0x6t
        0xet
        0xbt
        0x4t
        0x5t
        0xft
        0x1t
        0x3t
        0xct
        0x7t
        0x0t
        0x8t
        0x2t
        0x8t
        0x0t
        0xct
        0x4t
        0x9t
        0x6t
        0x7t
        0xbt
        0x2t
        0x3t
        0x1t
        0xft
        0x5t
        0xet
        0xat
        0xdt
        0xft
        0x6t
        0x5t
        0x8t
        0xet
        0xbt
        0xat
        0x4t
        0xct
        0x0t
        0x3t
        0x7t
        0x2t
        0x9t
        0x1t
        0xdt
        0x3t
        0x8t
        0xdt
        0x9t
        0x6t
        0xbt
        0xft
        0x0t
        0x2t
        0x5t
        0xct
        0xat
        0x4t
        0xet
        0x1t
        0x7t
        0xft
        0x8t
        0xet
        0x9t
        0x7t
        0x2t
        0x0t
        0xdt
        0xct
        0x6t
        0x1t
        0x5t
        0xbt
        0x4t
        0x3t
        0xat
        0x2t
        0x8t
        0x9t
        0x7t
        0x5t
        0xft
        0x0t
        0xbt
        0xct
        0x1t
        0xdt
        0xet
        0xat
        0x3t
        0x6t
        0x4t
        0x3t
        0x8t
        0xbt
        0x5t
        0x6t
        0x4t
        0xet
        0xat
        0x2t
        0xct
        0x1t
        0x7t
        0x9t
        0xft
        0xdt
        0x0t
        0x1t
        0x2t
        0x3t
        0xet
        0x6t
        0xdt
        0xbt
        0x8t
        0xft
        0xat
        0xct
        0x5t
        0x7t
        0x9t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/signers/DSTU4145Signer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSTU4145Signer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->DEFAULT_SBOX:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    if-eqz v0, :cond_1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, p1, v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {p0, v1, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1, p1}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_1
    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2

    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->engineGetKeyParameters()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    check-cast p1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getSbox()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->expandSbox([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>([B)V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object p0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length v1, v0

    array-length v3, p0

    if-le v1, v3, :cond_0

    array-length v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    array-length v1, p0

    goto :goto_0

    :goto_1
    new-array v3, v1, [B

    div-int/lit8 v4, v1, 0x2

    array-length v5, p0

    sub-int/2addr v4, v5

    array-length v5, p0

    invoke-static {p0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    sub-int/2addr v1, p0

    array-length p0, v0

    invoke-static {v0, v2, v3, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v4, p1

    div-int/2addr v4, v3

    new-array v4, v4, [B

    array-length v5, p1

    div-int/2addr v5, v3

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p1

    div-int/2addr v5, v3

    array-length v6, p1

    div-int/2addr v6, v3

    invoke-static {p1, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, p1, v2

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v1, p1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object p1, p1, v2

    invoke-interface {p0, v0, p1, v1}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    return p0

    :catch_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public expandSbox([B)[B
    .locals 3

    const/16 p0, 0x80

    new-array p0, p0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
