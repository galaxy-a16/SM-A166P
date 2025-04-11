.class public Lorg/spongycastle/bcpg/sig/TrustSignature;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p2, p3}, Lorg/spongycastle/bcpg/sig/TrustSignature;->intToByteArray(II)[B

    move-result-object p2

    const/4 p3, 0x5

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static intToByteArray(II)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-object v0
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getTrustAmount()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
