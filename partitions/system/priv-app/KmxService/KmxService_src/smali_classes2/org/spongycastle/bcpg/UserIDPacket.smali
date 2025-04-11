.class public Lorg/spongycastle/bcpg/UserIDPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field private idData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    const/4 v0, 0x1

    const/16 v1, 0xd

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    check-cast p1, Lorg/spongycastle/bcpg/UserIDPacket;

    iget-object p1, p1, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawID()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserIDPacket;->idData:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
