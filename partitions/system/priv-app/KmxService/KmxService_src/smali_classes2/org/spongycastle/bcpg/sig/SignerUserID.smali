.class public Lorg/spongycastle/bcpg/sig/SignerUserID;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x1c

    invoke-direct {p0, v1, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    .line 2
    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawID()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
