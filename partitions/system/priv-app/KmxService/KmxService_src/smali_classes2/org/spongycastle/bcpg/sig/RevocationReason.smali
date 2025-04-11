.class public Lorg/spongycastle/bcpg/sig/RevocationReason;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZBLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p2, p3}, Lorg/spongycastle/bcpg/sig/RevocationReason;->createData(BLjava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x1d

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(BLjava/lang/String;)[B
    .locals 3

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getRevocationDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRevocationReason()B
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method
