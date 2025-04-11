.class public final Lec/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lkc/o;

.field public c:[Lec/b;

.field public d:I

.field public e:I

.field public f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Lec/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lec/c;->g:I

    iput v0, p0, Lec/c;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lec/c;->a:Ljava/util/ArrayList;

    new-instance v0, Lkc/o;

    invoke-direct {v0, p1}, Lkc/o;-><init>(Lkc/t;)V

    iput-object v0, p0, Lec/c;->b:Lkc/o;

    const/16 p1, 0x8

    new-array p1, p1, [Lec/b;

    iput-object p1, p0, Lec/c;->c:[Lec/b;

    const/4 p1, 0x7

    iput p1, p0, Lec/c;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    iget-object v1, p0, Lec/c;->c:[Lec/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lec/c;->d:I

    if-lt v1, v2, :cond_1

    if-lez p1, :cond_1

    iget-object v2, p0, Lec/c;->c:[Lec/b;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget v2, v2, Lec/b;->a:I

    sub-int/2addr p1, v2

    iget v3, p0, Lec/c;->f:I

    sub-int/2addr v3, v2

    iput v3, p0, Lec/c;->f:I

    iget v2, p0, Lec/c;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lec/c;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object p1, p0, Lec/c;->c:[Lec/b;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lec/c;->e:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lec/c;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lec/c;->d:I

    :cond_2
    return v0
.end method

.method public final b(I)Lokio/ByteString;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    sget-object v1, Lec/e;->a:[Lec/b;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Lec/e;->a:[Lec/b;

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    sget-object v1, Lec/e;->a:[Lec/b;

    array-length v1, v1

    sub-int v1, p1, v1

    iget v2, p0, Lec/c;->d:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    if-ltz v2, :cond_3

    iget-object p0, p0, Lec/c;->c:[Lec/b;

    array-length v1, p0

    if-ge v2, v1, :cond_3

    aget-object p0, p0, v2

    if-eqz p0, :cond_2

    :goto_1
    iget-object p0, p0, Lec/b;->b:Lokio/ByteString;

    return-object p0

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header index too large "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lec/b;)V
    .locals 6

    iget-object v0, p0, Lec/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lec/c;->h:I

    const/4 v1, 0x0

    iget v2, p1, Lec/b;->a:I

    if-le v2, v0, :cond_0

    iget-object p1, p0, Lec/c;->c:[Lec/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/l;->j0([Ljava/lang/Object;Lkotlinx/coroutines/internal/z;)V

    iget-object p1, p0, Lec/c;->c:[Lec/b;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lec/c;->d:I

    iput v1, p0, Lec/c;->e:I

    iput v1, p0, Lec/c;->f:I

    return-void

    :cond_0
    iget v3, p0, Lec/c;->f:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lec/c;->a(I)I

    iget v0, p0, Lec/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lec/c;->c:[Lec/b;

    array-length v4, v3

    if-le v0, v4, :cond_1

    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lec/b;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lec/c;->c:[Lec/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lec/c;->d:I

    iput-object v0, p0, Lec/c;->c:[Lec/b;

    :cond_1
    iget v0, p0, Lec/c;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lec/c;->d:I

    iget-object v1, p0, Lec/c;->c:[Lec/b;

    aput-object p1, v1, v0

    iget p1, p0, Lec/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lec/c;->e:I

    iget p1, p0, Lec/c;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lec/c;->f:I

    return-void
.end method

.method public final d()Lokio/ByteString;
    .locals 12

    iget-object v0, p0, Lec/c;->b:Lkc/o;

    invoke-virtual {v0}, Lkc/o;->readByte()B

    move-result v1

    sget-object v2, Lac/c;->a:[B

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v1, v3}, Lec/c;->e(II)I

    move-result p0

    int-to-long v5, p0

    if-eqz v2, :cond_a

    new-instance p0, Lkc/e;

    invoke-direct {p0}, Lkc/e;-><init>()V

    sget-object v1, Lec/c0;->a:[I

    const-string v1, "source"

    invoke-static {v0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lec/c0;->c:Lec/b0;

    const-wide/16 v2, 0x0

    move-object v8, v1

    move v7, v4

    :goto_1
    cmp-long v9, v2, v5

    const/4 v10, 0x0

    if-gez v9, :cond_5

    invoke-virtual {v0}, Lkc/o;->readByte()B

    move-result v9

    sget-object v11, Lac/c;->a:[B

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v7, v7, 0x8

    :goto_2
    const/16 v9, 0x8

    if-lt v7, v9, :cond_4

    add-int/lit8 v9, v7, -0x8

    ushr-int v11, v4, v9

    and-int/lit16 v11, v11, 0xff

    iget-object v8, v8, Lec/b0;->a:[Lec/b0;

    if-eqz v8, :cond_3

    aget-object v8, v8, v11

    if-eqz v8, :cond_2

    iget-object v11, v8, Lec/b0;->a:[Lec/b0;

    if-nez v11, :cond_1

    iget v9, v8, Lec/b0;->b:I

    invoke-virtual {p0, v9}, Lkc/e;->h0(I)V

    iget v8, v8, Lec/b0;->c:I

    sub-int/2addr v7, v8

    move-object v8, v1

    goto :goto_2

    :cond_1
    move v7, v9

    goto :goto_2

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v10

    :cond_3
    invoke-static {}, Li4/f;->M()V

    throw v10

    :cond_4
    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    goto :goto_1

    :cond_5
    :goto_3
    if-lez v7, :cond_9

    rsub-int/lit8 v0, v7, 0x8

    shl-int v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, v8, Lec/b0;->a:[Lec/b0;

    if-eqz v2, :cond_8

    aget-object v0, v2, v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lec/b0;->a:[Lec/b0;

    if-nez v2, :cond_9

    iget v2, v0, Lec/b0;->c:I

    if-le v2, v7, :cond_6

    goto :goto_4

    :cond_6
    iget v0, v0, Lec/b0;->b:I

    invoke-virtual {p0, v0}, Lkc/e;->h0(I)V

    sub-int/2addr v7, v2

    move-object v8, v1

    goto :goto_3

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v10

    :cond_8
    invoke-static {}, Li4/f;->M()V

    throw v10

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lkc/e;->m()Lokio/ByteString;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v5, v6}, Lkc/o;->n(J)Lokio/ByteString;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public final e(II)I
    .locals 2

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lec/c;->b:Lkc/o;

    invoke-virtual {v0}, Lkc/o;->readByte()B

    move-result v0

    sget-object v1, Lac/c;->a:[B

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v0, p1

    add-int/2addr p2, p0

    return p2
.end method
