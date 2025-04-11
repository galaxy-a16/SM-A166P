.class public Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/UserAttributeSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private readFully([BII)V
    .locals 1

    if-lez p3, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public read()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public readPacket()Lorg/spongycastle/bcpg/UserAttributeSubpacket;
    .locals 6

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xc0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v4, 0xdf

    if-gt v0, v4, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit16 v0, v4, 0xc0

    goto :goto_0

    :cond_2
    const/16 v2, 0xff

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v0, v2

    move v2, v1

    :goto_1
    iget-object v4, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_4

    sub-int/2addr v0, v1

    new-array v5, v0, [B

    invoke-direct {p0, v5, v3, v0}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->readFully([BII)V

    if-eq v4, v1, :cond_3

    new-instance p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {p0, v4, v2, v5}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/spongycastle/bcpg/attr/ImageAttribute;

    invoke-direct {p0, v2, v5}, Lorg/spongycastle/bcpg/attr/ImageAttribute;-><init>(Z[B)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "unexpected EOF reading user attribute sub packet"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unrecognised length reading user attribute sub packet"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
