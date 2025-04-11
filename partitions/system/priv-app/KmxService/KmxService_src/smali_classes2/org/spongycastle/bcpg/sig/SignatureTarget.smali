.class public Lorg/spongycastle/bcpg/sig/SignatureTarget;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZII[B)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    int-to-byte p3, p3

    aput-byte p3, v0, p2

    invoke-static {v0, p4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p2

    const/16 p3, 0x1f

    invoke-direct {p0, p3, p1, v1, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getHashData()[B
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x2

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getPublicKeyAlgorithm()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
