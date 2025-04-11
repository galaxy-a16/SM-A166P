.class public Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/SignatureSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private checkData([BIILjava/lang/String;)[B
    .locals 0

    if-ne p3, p2, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0, p2}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "truncated "

    const-string p2, " subpacket data."

    invoke-static {p1, p4, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public readPacket()Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 12

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0xc0

    if-ge v0, v5, :cond_1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_1
    const/16 v6, 0xdf

    if-gt v0, v6, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/2addr v0, v4

    iget-object v6, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int/2addr v6, v0

    add-int/lit16 v0, v6, 0xc0

    goto :goto_0

    :cond_2
    const/16 v5, 0xff

    if-ne v0, v5, :cond_15

    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    shl-int/2addr v5, v2

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    shl-int/2addr v5, v4

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    or-int/2addr v0, v5

    move v5, v3

    :goto_1
    iget-object v6, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_14

    sub-int/2addr v0, v3

    new-array v7, v0, [B

    iget-object v8, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-static {v8, v7}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v8

    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_3

    move v1, v3

    :cond_3
    and-int/lit8 v3, v6, 0x7f

    const/16 v6, 0x9

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eq v8, v0, :cond_8

    if-eq v3, v10, :cond_7

    if-eq v3, v9, :cond_6

    if-eq v3, v6, :cond_5

    if-ne v3, v2, :cond_4

    const-string v0, "Issuer"

    invoke-direct {p0, v7, v4, v8, v0}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v7

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "truncated subpacket data."

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "Signature Key Expiration Time"

    goto :goto_2

    :cond_6
    const-string v0, "Signature Expiration Time"

    goto :goto_2

    :cond_7
    const-string v0, "Signature Creation Time"

    :goto_2
    invoke-direct {p0, v7, v11, v8, v0}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v7

    :cond_8
    :goto_3
    if-eq v3, v10, :cond_13

    if-eq v3, v9, :cond_12

    if-eq v3, v11, :cond_11

    const/4 p0, 0x5

    if-eq v3, p0, :cond_10

    const/4 p0, 0x7

    if-eq v3, p0, :cond_f

    if-eq v3, v6, :cond_e

    const/16 p0, 0xb

    if-eq v3, p0, :cond_d

    if-eq v3, v2, :cond_c

    const/16 p0, 0x19

    if-eq v3, p0, :cond_b

    const/16 p0, 0x1b

    if-eq v3, p0, :cond_a

    const/16 p0, 0x1c

    if-eq v3, p0, :cond_9

    packed-switch v3, :pswitch_data_0

    new-instance p0, Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-direct {p0, v3, v1, v5, v7}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/spongycastle/bcpg/sig/NotationData;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/NotationData;-><init>(ZZ[B)V

    return-object p0

    :cond_9
    new-instance p0, Lorg/spongycastle/bcpg/sig/SignerUserID;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/SignerUserID;-><init>(ZZ[B)V

    return-object p0

    :cond_a
    new-instance p0, Lorg/spongycastle/bcpg/sig/KeyFlags;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/KeyFlags;-><init>(ZZ[B)V

    return-object p0

    :cond_b
    new-instance p0, Lorg/spongycastle/bcpg/sig/PrimaryUserID;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/PrimaryUserID;-><init>(ZZ[B)V

    return-object p0

    :cond_c
    new-instance p0, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;-><init>(ZZ[B)V

    return-object p0

    :cond_d
    :pswitch_1
    new-instance p0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-direct {p0, v3, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZZ[B)V

    return-object p0

    :cond_e
    new-instance p0, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;-><init>(ZZ[B)V

    return-object p0

    :cond_f
    new-instance p0, Lorg/spongycastle/bcpg/sig/Revocable;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/Revocable;-><init>(ZZ[B)V

    return-object p0

    :cond_10
    new-instance p0, Lorg/spongycastle/bcpg/sig/TrustSignature;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/TrustSignature;-><init>(ZZ[B)V

    return-object p0

    :cond_11
    new-instance p0, Lorg/spongycastle/bcpg/sig/Exportable;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/Exportable;-><init>(ZZ[B)V

    return-object p0

    :cond_12
    new-instance p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;-><init>(ZZ[B)V

    return-object p0

    :cond_13
    new-instance p0, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-direct {p0, v1, v5, v7}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;-><init>(ZZ[B)V

    return-object p0

    :cond_14
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "unexpected EOF reading signature sub packet"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected length header"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
