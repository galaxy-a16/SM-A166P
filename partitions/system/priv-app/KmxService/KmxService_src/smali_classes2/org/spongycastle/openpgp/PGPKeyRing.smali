.class public abstract Lorg/spongycastle/openpgp/PGPKeyRing;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/TrustPacket;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;Lorg/spongycastle/bcpg/TrustPacket;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t create signature object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readUserIDs(Lorg/spongycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v0

    instance-of v1, v0, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    check-cast v0, Lorg/spongycastle/bcpg/UserAttributePacket;

    new-instance v1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/UserAttributePacket;->getSubpackets()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static wrap(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/BCPGInputStream;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/bcpg/BCPGInputStream;

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public abstract encode(Ljava/io/OutputStream;)V
.end method

.method public abstract getEncoded()[B
.end method

.method public abstract getKeysWithSignaturesBy(J)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
.end method

.method public abstract getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
.end method

.method public abstract getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;
.end method

.method public abstract getPublicKeys()Ljava/util/Iterator;
.end method
