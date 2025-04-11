.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/spongycastle/pqc/jcajce/interfaces/XMSSKey;


# instance fields
.field private final keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

.field private final treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/XMSSKeyParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->getTreeDigest()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;

    move-result-object p1

    :try_start_0
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->getHeight()I

    move-result v0

    invoke-static {v1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigest(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/spongycastle/crypto/Digest;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeySeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getSecretKeyPRF()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getRoot()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;->getBdsState()[B

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassNotFoundException processing BDS state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createKeyStructure()Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;
    .locals 13

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length p0, v0

    sub-int/2addr p0, v3

    invoke-static {v0, v3, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v12

    new-instance p0, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;-><init>(I[B[B[B[B[B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "XMSS"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 6

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v3

    new-instance v4, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->createKeyStructure()Lorg/spongycastle/pqc/asn1/XMSSPrivateKey;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result p0

    return p0
.end method

.method public getKeyParams()Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    return-object p0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getXMSSDigestName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeDigestOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->keyParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr p0, v0

    return p0
.end method
