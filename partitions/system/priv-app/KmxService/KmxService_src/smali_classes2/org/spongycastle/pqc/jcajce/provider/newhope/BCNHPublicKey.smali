.class public Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/NHPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

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
    .locals 2

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

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

    const-string p0, "X.509"

    return-object p0
.end method

.method public getKeyParams()Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    return-object p0
.end method

.method public getPublicData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
