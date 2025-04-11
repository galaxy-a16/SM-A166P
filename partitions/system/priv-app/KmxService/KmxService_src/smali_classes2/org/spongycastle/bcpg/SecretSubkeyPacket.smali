.class public Lorg/spongycastle/bcpg/SecretSubkeyPacket;
.super Lorg/spongycastle/bcpg/SecretKeyPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getEncodedContents()[B

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
