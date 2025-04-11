.class public final Lcom/google/protobuf/m0;
.super Lcom/google/protobuf/n0;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I

.field public final f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/n0;-><init>()V

    if-ltz p2, :cond_1

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/m0;->c:[B

    iput p2, p0, Lcom/google/protobuf/m0;->d:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/m0;->f:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->O(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->B(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final B(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Q(I)V

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/v;)V

    return-void
.end method

.method public final C(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->T(I)V

    return-void
.end method

.method public final D(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->T(I)V

    return-void
.end method

.method public final E(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/m0;->U(J)V

    return-void
.end method

.method public final F(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m0;->U(J)V

    return-void
.end method

.method public final G(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->W(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m0;->X(J)V

    :goto_0
    return-void
.end method

.method public final H(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->Q(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/m0;->S(J)V

    :goto_0
    return-void
.end method

.method public final I(ILcom/google/protobuf/r8;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->O(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->J(Lcom/google/protobuf/r8;)V

    return-void
.end method

.method public final J(Lcom/google/protobuf/r8;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/protobuf/r8;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Q(I)V

    invoke-interface {p1, p0}, Lcom/google/protobuf/r8;->writeTo(Lcom/google/protobuf/n0;)V

    return-void
.end method

.method public final K(ILcom/google/protobuf/r8;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/m0;->O(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/m0;->P(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/m0;->I(ILcom/google/protobuf/r8;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/m0;->O(II)V

    return-void
.end method

.method public final L(ILcom/google/protobuf/ByteString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/m0;->O(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/m0;->P(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/m0;->A(ILcom/google/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/m0;->O(II)V

    return-void
.end method

.method public final M(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->O(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/n0;->t(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/m0;->d:I

    if-le v2, v3, :cond_0

    :try_start_1
    new-array v1, v0, [B

    sget-object v2, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/google/protobuf/xb;->i0(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Q(I)V

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/protobuf/m0;->a0([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/m0;->Y()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/n0;->t(I)I

    move-result v0

    iget v2, p0, Lcom/google/protobuf/m0;->e:I
    :try_end_1
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v4, p0, Lcom/google/protobuf/m0;->c:[B

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_2
    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    sub-int/2addr v3, v1

    sget-object v5, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    invoke-virtual {v5, p1, v4, v1, v3}, Lcom/google/protobuf/xb;->i0(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/m0;->W(I)V

    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/yb;->b(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->W(I)V

    iget v1, p0, Lcom/google/protobuf/m0;->e:I

    sget-object v3, Lcom/google/protobuf/yb;->a:Lcom/google/protobuf/xb;

    invoke-virtual {v3, p1, v4, v1, v0}, Lcom/google/protobuf/xb;->i0(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/m0;->e:I
    :try_end_2
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    throw v0
    :try_end_3
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/n0;->w(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_0
    return-void
.end method

.method public final O(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->Q(I)V

    return-void
.end method

.method public final P(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/m0;->W(I)V

    return-void
.end method

.method public final Q(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->W(I)V

    return-void
.end method

.method public final R(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/m0;->X(J)V

    return-void
.end method

.method public final S(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m0;->X(J)V

    return-void
.end method

.method public final T(I)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/google/protobuf/m0;->c:[B

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/protobuf/m0;->e:I

    shr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    return-void
.end method

.method public final U(J)V
    .locals 8

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/google/protobuf/m0;->c:[B

    aput-byte v4, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x8

    shr-long v6, p1, v4

    and-long/2addr v6, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x10

    shr-long v6, p1, v4

    and-long/2addr v6, v2

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x18

    shr-long v6, p1, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/protobuf/m0;->e:I

    const/16 p0, 0x38

    shr-long p0, p1, p0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v5, v1

    return-void
.end method

.method public final V(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->W(I)V

    return-void
.end method

.method public final W(I)V
    .locals 4

    sget-boolean v0, Lcom/google/protobuf/n0;->b:Z

    iget-object v1, p0, Lcom/google/protobuf/m0;->c:[B

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    int-to-long v2, v0

    int-to-byte p0, p1

    invoke-static {v1, v2, v3, p0}, Lcom/google/protobuf/wb;->p([BJB)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    int-to-long v2, v0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/wb;->p([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    int-to-byte p0, p1

    aput-byte p0, v1, v0

    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final X(J)V
    .locals 9

    sget-boolean v0, Lcom/google/protobuf/n0;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget-object v6, p0, Lcom/google/protobuf/m0;->c:[B

    if-eqz v0, :cond_1

    :goto_0
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    int-to-long v0, v0

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v6, v0, v1, p0}, Lcom/google/protobuf/wb;->p([BJB)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/protobuf/m0;->e:I

    int-to-long v7, v0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v6, v7, v8, v0}, Lcom/google/protobuf/wb;->p([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    long-to-int p0, p1

    int-to-byte p0, p0

    aput-byte p0, v6, v0

    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lcom/google/protobuf/m0;->e:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final Y()V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    iget-object v1, p0, Lcom/google/protobuf/m0;->f:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/protobuf/m0;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/m0;->e:I

    return-void
.end method

.method public final Z(I)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/m0;->d:I

    iget v1, p0, Lcom/google/protobuf/m0;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/m0;->Y()V

    :cond_0
    return-void
.end method

.method public final a(II[B)V
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/protobuf/m0;->a0([BII)V

    return-void
.end method

.method public final a0([BII)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    iget v1, p0, Lcom/google/protobuf/m0;->d:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/google/protobuf/m0;->c:[B

    if-lt v2, p3, :cond_0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/protobuf/m0;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/m0;->e:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/m0;->Y()V

    if-gt p3, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/protobuf/m0;->e:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/m0;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/m0;->e:I

    iget v2, p0, Lcom/google/protobuf/m0;->d:I

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/protobuf/m0;->c:[B

    if-lt v3, v0, :cond_0

    invoke-virtual {p1, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/google/protobuf/m0;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/m0;->e:I

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    iput v2, p0, Lcom/google/protobuf/m0;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/m0;->Y()V

    :goto_0
    const/4 v1, 0x0

    if-le v0, v2, :cond_1

    invoke-virtual {p1, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/protobuf/m0;->f:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/protobuf/m0;->e:I

    :goto_1
    return-void
.end method

.method public final x(B)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    iget v1, p0, Lcom/google/protobuf/m0;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/m0;->Y()V

    :cond_0
    iget v0, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/m0;->e:I

    iget-object p0, p0, Lcom/google/protobuf/m0;->c:[B

    aput-byte p1, p0, v0

    return-void
.end method

.method public final y(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m0;->Z(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m0;->V(II)V

    int-to-byte p1, p2

    iget p2, p0, Lcom/google/protobuf/m0;->e:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/google/protobuf/m0;->e:I

    iget-object p0, p0, Lcom/google/protobuf/m0;->c:[B

    aput-byte p1, p0, p2

    return-void
.end method

.method public final z(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m0;->Q(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/protobuf/m0;->a0([BII)V

    return-void
.end method
