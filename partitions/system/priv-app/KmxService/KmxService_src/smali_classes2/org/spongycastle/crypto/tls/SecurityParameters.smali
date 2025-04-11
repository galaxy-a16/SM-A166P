.class public Lorg/spongycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field encryptThenMAC:Z

.field entity:I

.field extendedMasterSecret:Z

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field pskIdentity:[B

.field serverRandom:[B

.field sessionHash:[B

.field srpIdentity:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    :cond_0
    return-void
.end method

.method public getCipherSuite()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return p0
.end method

.method public getClientRandom()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object p0
.end method

.method public getCompressionAlgorithm()S
    .locals 0

    iget-short p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return p0
.end method

.method public getEntity()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    return p0
.end method

.method public getMasterSecret()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object p0
.end method

.method public getPSKIdentity()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object p0
.end method

.method public getPrfAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return p0
.end method

.method public getPskIdentity()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object p0
.end method

.method public getSRPIdentity()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-object p0
.end method

.method public getServerRandom()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object p0
.end method

.method public getSessionHash()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    return-object p0
.end method

.method public getVerifyDataLength()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return p0
.end method
