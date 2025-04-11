.class public Lorg/spongycastle/bcpg/BCPGInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/PacketTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;
    }
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field next:Z

.field nextB:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    iput-object p1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public nextPacketTag()I
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    :cond_0
    iget p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    if-gez p0, :cond_1

    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x3f

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_2

    shr-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    iget p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    return p0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2

    .line 2
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0

    :cond_1
    iget p3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    if-gez p3, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    const/4 p0, 0x1

    return p0
.end method

.method public readAll()[B
    .locals 0

    invoke-static {p0}, Lorg/spongycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    if-lt p0, p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readPacket()Lorg/spongycastle/bcpg/Packet;
    .locals 6

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_b

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    const/16 v4, 0xc0

    if-ge v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v5, 0xdf

    if-gt v1, v5, :cond_3

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    add-int/lit16 v1, v1, -0xc0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    goto :goto_3

    :cond_3
    const/16 v4, 0xff

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v1, 0x1f

    shl-int v1, v3, v1

    goto :goto_4

    :cond_5
    and-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x3f

    const/4 v4, 0x2

    shr-int/2addr v0, v4

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown length type encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    :goto_3
    move v3, v2

    :goto_4
    move v2, v1

    :goto_5
    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Lorg/spongycastle/bcpg/BCPGInputStream;

    new-instance v4, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;

    invoke-direct {v4, p0, v3, v2}, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;ZI)V

    invoke-direct {v1, v4}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    :goto_6
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p0, Ljava/io/IOException;

    const-string v1, "unknown packet type encountered: "

    invoke-static {v1, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/spongycastle/bcpg/TrustPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/TrustPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/LiteralDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/spongycastle/bcpg/MarkerPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/MarkerPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricEncDataPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SymmetricEncDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/CompressedDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/InputStreamPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ModDetectionCodePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/spongycastle/bcpg/UserAttributePacket;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/UserAttributePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_12
    new-instance v1, Lorg/spongycastle/bcpg/ExperimentalPacket;

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/bcpg/ExperimentalPacket;-><init>(ILorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v1

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid header encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
