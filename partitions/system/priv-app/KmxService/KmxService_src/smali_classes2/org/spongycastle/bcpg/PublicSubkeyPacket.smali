.class public Lorg/spongycastle/bcpg/PublicSubkeyPacket;
.super Lorg/spongycastle/bcpg/PublicKeyPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0xe

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
