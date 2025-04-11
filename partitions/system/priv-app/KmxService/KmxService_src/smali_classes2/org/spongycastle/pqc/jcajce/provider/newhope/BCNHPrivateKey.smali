.class public Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/NHPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->convert([B)[S

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-void
.end method

.method private static convert([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/spongycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([S[S)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "NH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 5

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_0

    aget-short v3, p0, v2

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v3, v1, v4}, Lorg/spongycastle/util/Pack;->shortToLittleEndian(S[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

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

.method public getKeyParams()Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-object p0
.end method

.method public getSecretData()[S
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result p0

    return p0
.end method
