.class public Lorg/spongycastle/openpgp/PGPObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# instance fields
.field private fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private in:Lorg/spongycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;-><init>(Lorg/spongycastle/openpgp/PGPObjectFactory;)V

    return-object v0
.end method

.method public nextObject()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object in stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v0

    :pswitch_2
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t create secret key object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_1
    new-instance v1, Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t create one pass signature object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPOnePassSignature;)V

    return-object p0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :try_start_2
    new-instance v1, Lorg/spongycastle/openpgp/PGPSignature;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t create signature object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPSignatureList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPSignature;)V

    return-object p0

    :pswitch_5
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/spongycastle/openpgp/PGPLiteralData;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPLiteralData;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPMarker;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPMarker;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-static {v0, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readSubkey(Lorg/spongycastle/bcpg/BCPGInputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0
    :try_end_3
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPCompressedData;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
