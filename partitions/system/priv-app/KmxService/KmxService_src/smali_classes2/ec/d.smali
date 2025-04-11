.class public final Lec/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:[Lec/b;

.field public e:I

.field public f:I

.field public g:I

.field public final h:Z

.field public final i:Lkc/e;


# direct methods
.method public constructor <init>(Lkc/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lec/d;->h:Z

    iput-object p1, p0, Lec/d;->i:Lkc/e;

    const p1, 0x7fffffff

    iput p1, p0, Lec/d;->a:I

    const/16 p1, 0x1000

    iput p1, p0, Lec/d;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [Lec/b;

    iput-object p1, p0, Lec/d;->d:[Lec/b;

    const/4 p1, 0x7

    iput p1, p0, Lec/d;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    if-lez p1, :cond_2

    iget-object v0, p0, Lec/d;->d:[Lec/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lec/d;->e:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    if-lez p1, :cond_1

    iget-object v2, p0, Lec/d;->d:[Lec/b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget v2, v2, Lec/b;->a:I

    sub-int/2addr p1, v2

    iget v3, p0, Lec/d;->g:I

    sub-int/2addr v3, v2

    iput v3, p0, Lec/d;->g:I

    iget v2, p0, Lec/d;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lec/d;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_1
    iget-object p1, p0, Lec/d;->d:[Lec/b;

    add-int/lit8 v2, v2, 0x1

    add-int v0, v2, v1

    iget v4, p0, Lec/d;->f:I

    invoke-static {p1, v2, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lec/d;->d:[Lec/b;

    iget v0, p0, Lec/d;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lec/d;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lec/d;->e:I

    :cond_2
    return-void
.end method

.method public final b(Lec/b;)V
    .locals 6

    iget v0, p0, Lec/d;->c:I

    const/4 v1, 0x0

    iget v2, p1, Lec/b;->a:I

    if-le v2, v0, :cond_0

    iget-object p1, p0, Lec/d;->d:[Lec/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/l;->j0([Ljava/lang/Object;Lkotlinx/coroutines/internal/z;)V

    iget-object p1, p0, Lec/d;->d:[Lec/b;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lec/d;->e:I

    iput v1, p0, Lec/d;->f:I

    iput v1, p0, Lec/d;->g:I

    return-void

    :cond_0
    iget v3, p0, Lec/d;->g:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lec/d;->a(I)V

    iget v0, p0, Lec/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lec/d;->d:[Lec/b;

    array-length v4, v3

    if-le v0, v4, :cond_1

    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lec/b;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lec/d;->d:[Lec/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lec/d;->e:I

    iput-object v0, p0, Lec/d;->d:[Lec/b;

    :cond_1
    iget v0, p0, Lec/d;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lec/d;->e:I

    iget-object v1, p0, Lec/d;->d:[Lec/b;

    aput-object p1, v1, v0

    iget p1, p0, Lec/d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lec/d;->f:I

    iget p1, p0, Lec/d;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lec/d;->g:I

    return-void
.end method

.method public final c(Lokio/ByteString;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lec/d;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lec/c0;->a:[I

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    sget-object v8, Lac/c;->a:[B

    and-int/lit16 v7, v7, 0xff

    sget-object v8, Lec/c0;->b:[B

    aget-byte v7, v8, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    int-to-long v7, v0

    add-long/2addr v5, v7

    const/4 v0, 0x3

    shr-long v4, v5, v0

    long-to-int v0, v4

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    sget-object v4, Lec/c0;->a:[I

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v4

    move-wide v5, v2

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    sget-object v7, Lac/c;->a:[B

    and-int/lit16 v3, v3, 0xff

    sget-object v7, Lec/c0;->a:[I

    aget v7, v7, v3

    sget-object v8, Lec/c0;->b:[B

    aget-byte v3, v8, v3

    shl-long/2addr v5, v3

    int-to-long v7, v7

    or-long/2addr v5, v7

    add-int/2addr v2, v3

    :goto_2
    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    shr-long v7, v5, v2

    long-to-int v3, v7

    invoke-virtual {v0, v3}, Lkc/e;->h0(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    rsub-int/lit8 p1, v2, 0x8

    shl-long v3, v5, p1

    const-wide/16 v5, 0xff

    ushr-long v1, v5, v2

    or-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lkc/e;->h0(I)V

    :cond_3
    invoke-virtual {v0}, Lkc/e;->m()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x80

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    :goto_3
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2, v1}, Lec/d;->e(III)V

    iget-object p0, p0, Lec/d;->i:Lkc/e;

    invoke-virtual {p0, p1}, Lkc/e;->b0(Lokio/ByteString;)V

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 13

    iget-boolean v0, p0, Lec/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lec/d;->a:I

    iget v2, p0, Lec/d;->c:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v4, v3}, Lec/d;->e(III)V

    :cond_0
    iput-boolean v1, p0, Lec/d;->b:Z

    const v0, 0x7fffffff

    iput v0, p0, Lec/d;->a:I

    iget v0, p0, Lec/d;->c:I

    invoke-virtual {p0, v0, v4, v3}, Lec/d;->e(III)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/b;

    iget-object v4, v3, Lec/b;->b:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    sget-object v5, Lec/e;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, -0x1

    iget-object v7, v3, Lec/b;->c:Lokio/ByteString;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x2

    if-le v8, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x7

    if-lt v8, v5, :cond_4

    sget-object v8, Lec/e;->a:[Lec/b;

    add-int/lit8 v9, v5, -0x1

    aget-object v9, v8, v9

    iget-object v9, v9, Lec/b;->c:Lokio/ByteString;

    invoke-static {v9, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    aget-object v8, v8, v5

    iget-object v8, v8, Lec/b;->c:Lokio/ByteString;

    invoke-static {v8, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    move v8, v6

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_2
    move v8, v5

    :goto_3
    if-ne v8, v6, :cond_a

    iget v9, p0, Lec/d;->e:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lec/d;->d:[Lec/b;

    array-length v10, v10

    :goto_4
    if-ge v9, v10, :cond_a

    iget-object v11, p0, Lec/d;->d:[Lec/b;

    aget-object v11, v11, v9

    const/4 v12, 0x0

    if-eqz v11, :cond_9

    iget-object v11, v11, Lec/b;->b:Lokio/ByteString;

    invoke-static {v11, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lec/d;->d:[Lec/b;

    aget-object v11, v11, v9

    if-eqz v11, :cond_7

    iget-object v11, v11, Lec/b;->c:Lokio/ByteString;

    invoke-static {v11, v7}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v8, p0, Lec/d;->e:I

    sub-int/2addr v9, v8

    sget-object v8, Lec/e;->a:[Lec/b;

    array-length v8, v8

    add-int/2addr v8, v9

    goto :goto_6

    :cond_6
    if-ne v5, v6, :cond_8

    iget v5, p0, Lec/d;->e:I

    sub-int v5, v9, v5

    sget-object v11, Lec/e;->a:[Lec/b;

    array-length v11, v11

    add-int/2addr v5, v11

    goto :goto_5

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v12

    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v12

    :cond_a
    :goto_6
    if-eq v8, v6, :cond_b

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v8, v3, v4}, Lec/d;->e(III)V

    goto :goto_8

    :cond_b
    const/16 v8, 0x40

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lec/d;->i:Lkc/e;

    invoke-virtual {v5, v8}, Lkc/e;->h0(I)V

    invoke-virtual {p0, v4}, Lec/d;->c(Lokio/ByteString;)V

    goto :goto_7

    :cond_c
    sget-object v6, Lec/b;->d:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lec/b;->i:Lokio/ByteString;

    invoke-static {v6, v4}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    const/16 v3, 0xf

    invoke-virtual {p0, v5, v3, v1}, Lec/d;->e(III)V

    invoke-virtual {p0, v7}, Lec/d;->c(Lokio/ByteString;)V

    goto :goto_8

    :cond_d
    const/16 v4, 0x3f

    invoke-virtual {p0, v5, v4, v8}, Lec/d;->e(III)V

    :goto_7
    invoke-virtual {p0, v7}, Lec/d;->c(Lokio/ByteString;)V

    invoke-virtual {p0, v3}, Lec/d;->b(Lec/b;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final e(III)V
    .locals 0

    iget-object p0, p0, Lec/d;->i:Lkc/e;

    if-ge p1, p2, :cond_0

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    return-void

    :cond_0
    or-int/2addr p3, p2

    invoke-virtual {p0, p3}, Lkc/e;->h0(I)V

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    or-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lkc/e;->h0(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    return-void
.end method
