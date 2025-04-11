.class public Lorg/spongycastle/bcpg/sig/RevocationKey;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZBI[B)V
    .locals 0

    .line 1
    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    invoke-static {p2, p3, p4}, Lorg/spongycastle/bcpg/sig/RevocationKey;->createData(BB[B)[B

    move-result-object p2

    const/16 p3, 0xc

    const/4 p4, 0x0

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(BB[B)[B
    .locals 3

    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    const/4 p0, 0x1

    aput-byte p1, v0, p0

    array-length p0, p2

    invoke-static {p2, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    return p0
.end method

.method public getFingerprint()[B
    .locals 4

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getSignatureClass()B
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method
