.class public Lorg/spongycastle/openpgp/PGPSecretKeyRing;
.super Lorg/spongycastle/openpgp/PGPKeyRing;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/openpgp/PGPKeyRing;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPSecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field extraPubKeys:Ljava/util/List;

.field keys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/openpgp/PGPKeyRing;->wrap(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x5

    const/4 v11, 0x7

    if-eq v1, v2, :cond_1

    if-ne v1, v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "secret key ring doesn\'t start with secret key tag: tag 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/spongycastle/bcpg/SecretKeyPacket;

    :goto_1
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v13, 0x3d

    if-ne v1, v13, :cond_2

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v3

    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v5, v6, v7}, Lorg/spongycastle/openpgp/PGPKeyRing;->readUserIDs(Lorg/spongycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v14, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v15, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v8, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v12}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    move-object v1, v8

    move-object v13, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v15, v12, v13}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-eq v1, v11, :cond_4

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    :goto_3
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-ne v1, v11, :cond_6

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    :goto_4
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    goto :goto_4

    :cond_5
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v6, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v7, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v8

    invoke-direct {v7, v8, v2, v4, v9}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v6, v1, v7}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    goto :goto_5

    :cond_6
    const/16 v3, 0x3d

    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    new-instance v6, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v6, v1, v2, v4, v9}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static copyWithNewPassword(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKey;->copyWithNewPassword(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static insertSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPSecretKey;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v8

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    :cond_0
    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_5

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot add a master key to a ring that already has one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static removeSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPSecretKey;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v3}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static replacePublicKeys(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPPublicKeyRing;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtraPublicKeys()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getKeysWithSignaturesBy(J)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getSignaturesForKeyID(J)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 4

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKey([B)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3

    .line 3
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKey([B)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v2

    invoke-static {p1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getSecretKey()Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPSecretKey;

    return-object p0
.end method

.method public getSecretKey(J)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 4

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecretKey([B)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 3

    .line 3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v2

    invoke-static {p1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecretKeys()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
