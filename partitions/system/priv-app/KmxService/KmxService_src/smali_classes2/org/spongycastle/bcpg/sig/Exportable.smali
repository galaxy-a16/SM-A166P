.class public Lorg/spongycastle/bcpg/sig/Exportable;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {p2}, Lorg/spongycastle/bcpg/sig/Exportable;->booleanToByteArray(Z)[B

    move-result-object p2

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static booleanToByteArray(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [B

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    aput-byte v0, v1, p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public isExportable()Z
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
