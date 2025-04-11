.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final digestSize:I

.field private final len:I

.field private final len1:I

.field private final len2:I

.field private final oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

.field private final winternitzParameter:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getDigestSize(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    mul-int/lit8 v2, v0, 0x8

    int-to-double v2, v2

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    const/4 v3, 0x1

    rsub-int/lit8 v4, v3, 0x10

    mul-int/2addr v4, v2

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v4

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v3

    iput v4, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->lookup(Ljava/lang/String;III)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot find OID for digest algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digest:Lorg/spongycastle/crypto/Digest;

    return-object p0
.end method

.method public getDigestSize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    return p0
.end method

.method public getLen()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    return p0
.end method

.method public getLen1()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    return p0
.end method

.method public getLen2()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    return p0
.end method

.method public getOid()Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    return-object p0
.end method

.method public getWinternitzParameter()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    return p0
.end method
