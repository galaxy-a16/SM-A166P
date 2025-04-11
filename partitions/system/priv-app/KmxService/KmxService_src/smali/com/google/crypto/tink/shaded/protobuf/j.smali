.class public final Lcom/google/crypto/tink/shaded/protobuf/j;
.super Lcom/google/crypto/tink/shaded/protobuf/m;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/m;-><init>()V

    const p4, 0x7fffffff

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->f:I

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 4

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    invoke-static {v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/s;->b:[B

    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/e0;->D(II[B)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final e()I
    .locals 7

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_a

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_9

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    if-eq v4, v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    aget-byte v4, v2, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_7

    long-to-int p0, v0

    return p0

    :cond_7
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_2
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    return v0
.end method
