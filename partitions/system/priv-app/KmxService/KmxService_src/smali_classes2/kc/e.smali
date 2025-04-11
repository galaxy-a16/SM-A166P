.class public final Lkc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/g;
.implements Lkc/f;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lkc/p;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lkc/e;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3, p1}, Lkc/e;->B0(IILjava/lang/String;)V

    return-object p0

    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    invoke-virtual {p0, v1, p2, p1}, Lkc/e;->O(II[B)V

    return-object p0

    :cond_4
    const-string p0, "endIndex > string.length: "

    const-string p2, " > "

    invoke-static {p0, p3, p2}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p0, "endIndex < beginIndex: "

    const-string p1, " < "

    invoke-static {p0, p3, p1, p2}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lkc/e;->U(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final B0(IILjava/lang/String;)V
    .locals 11

    const-string v0, "string"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    if-lt p2, p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    :goto_3
    if-ge p1, p2, :cond_c

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v1}, Lkc/e;->N(I)Lkc/p;

    move-result-object v4

    iget v5, v4, Lkc/p;->c:I

    sub-int/2addr v5, p1

    rsub-int v6, v5, 0x2000

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    iget-object v8, v4, Lkc/p;->a:[B

    aput-byte v2, v8, p1

    :goto_4
    move p1, v7

    if-ge p1, v6, :cond_4

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, p1, 0x1

    add-int/2addr p1, v5

    int-to-byte v2, v2

    aput-byte v2, v8, p1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/2addr v5, p1

    iget v2, v4, Lkc/p;->c:I

    sub-int/2addr v5, v2

    add-int/2addr v2, v5

    iput v2, v4, Lkc/p;->c:I

    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v4, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    goto :goto_3

    :cond_5
    const/16 v4, 0x800

    if-ge v2, v4, :cond_6

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lkc/e;->N(I)Lkc/p;

    move-result-object v5

    iget v6, v5, Lkc/p;->c:I

    shr-int/lit8 v7, v2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    iget-object v8, v5, Lkc/p;->a:[B

    aput-byte v7, v8, v6

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v8, v7

    add-int/2addr v6, v4

    iput v6, v5, Lkc/p;->c:I

    iget-wide v2, p0, Lkc/e;->b:J

    const-wide/16 v4, 0x2

    goto/16 :goto_9

    :cond_6
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_b

    const v4, 0xdfff

    if-le v2, v4, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_8

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v0

    :goto_6
    const v8, 0xdbff

    if-gt v2, v8, :cond_a

    const v8, 0xdc00

    if-gt v8, v7, :cond_a

    if-ge v4, v7, :cond_9

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v7, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lkc/e;->N(I)Lkc/p;

    move-result-object v6

    iget v7, v6, Lkc/p;->c:I

    shr-int/lit8 v8, v2, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    iget-object v9, v6, Lkc/p;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    add-int/lit8 v8, v7, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v8

    add-int/2addr v7, v4

    iput v7, v6, Lkc/p;->c:I

    iget-wide v2, p0, Lkc/e;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_3

    :cond_a
    :goto_7
    invoke-virtual {p0, v5}, Lkc/e;->h0(I)V

    move p1, v6

    goto/16 :goto_3

    :cond_b
    :goto_8
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lkc/e;->N(I)Lkc/p;

    move-result-object v6

    iget v7, v6, Lkc/p;->c:I

    shr-int/lit8 v8, v2, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    iget-object v9, v6, Lkc/p;->a:[B

    aput-byte v8, v9, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v9, v8

    add-int/lit8 v5, v7, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v9, v5

    add-int/2addr v7, v4

    iput v7, v6, Lkc/p;->c:I

    iget-wide v2, p0, Lkc/e;->b:J

    const-wide/16 v4, 0x3

    :goto_9
    add-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    const-string p0, "endIndex > string.length: "

    const-string p1, " > "

    invoke-static {p0, p2, p1}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p0, "endIndex < beginIndex: "

    const-string p3, " < "

    invoke-static {p0, p2, p3, p1}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string p0, "beginIndex < 0: "

    invoke-static {p0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lkc/e;->B0(IILjava/lang/String;)V

    return-void
.end method

.method public final D0(I)V
    .locals 10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x800

    const/16 v3, 0x3f

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lkc/e;->N(I)Lkc/p;

    move-result-object v2

    iget v4, v2, Lkc/p;->c:I

    shr-int/lit8 v5, p1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    iget-object v6, v2, Lkc/p;->a:[B

    aput-byte v5, v6, v4

    add-int/lit8 v5, v4, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v5

    add-int/2addr v4, v1

    iput v4, v2, Lkc/p;->c:I

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x2

    goto :goto_1

    :cond_1
    const v2, 0xd800

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0xdfff

    if-lt v2, p1, :cond_3

    invoke-virtual {p0, v3}, Lkc/e;->h0(I)V

    goto :goto_2

    :cond_3
    :goto_0
    const/high16 v2, 0x10000

    const/4 v4, 0x3

    if-ge p1, v2, :cond_4

    invoke-virtual {p0, v4}, Lkc/e;->N(I)Lkc/p;

    move-result-object v1

    iget v2, v1, Lkc/p;->c:I

    shr-int/lit8 v5, p1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    iget-object v6, v1, Lkc/p;->a:[B

    aput-byte v5, v6, v2

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    add-int/lit8 v5, v2, 0x2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v5

    add-int/2addr v2, v4

    iput v2, v1, Lkc/p;->c:I

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x3

    goto :goto_1

    :cond_4
    const v2, 0x10ffff

    const/4 v5, 0x4

    if-gt p1, v2, :cond_5

    invoke-virtual {p0, v5}, Lkc/e;->N(I)Lkc/p;

    move-result-object v1

    iget v2, v1, Lkc/p;->c:I

    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    iget-object v6, v1, Lkc/p;->a:[B

    aput-byte v4, v6, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v2, 0x3

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v6, v4

    add-int/2addr v2, v5

    iput v2, v1, Lkc/p;->c:I

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x4

    :goto_1
    add-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: 0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const/16 v2, 0x8

    new-array v3, v2, [C

    sget-object v6, Lg2/m;->f:[C

    shr-int/lit8 v7, p1, 0x1c

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    const/4 v8, 0x0

    aput-char v7, v3, v8

    shr-int/lit8 v7, p1, 0x18

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    const/4 v9, 0x1

    aput-char v7, v3, v9

    shr-int/lit8 v7, p1, 0x14

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v3, v1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    aput-char v1, v3, v4

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    aput-char v1, v3, v5

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    const/4 v4, 0x5

    aput-char v1, v3, v4

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v6, v1

    const/4 v4, 0x6

    aput-char v1, v3, v4

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v6, p1

    const/4 v1, 0x7

    aput-char p1, v3, v1

    :goto_3
    if-ge v8, v2, :cond_6

    aget-char p1, v3, v8

    const/16 v1, 0x30

    if-ne p1, v1, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    rsub-int/lit8 p1, v8, 0x8

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v8, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    :cond_7
    const-string v1, "0"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E()[B
    .locals 2

    iget-wide v0, p0, Lkc/e;->b:J

    invoke-virtual {p0, v0, v1}, Lkc/e;->y(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final F(Lkc/t;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x2000

    int-to-long v2, v2

    invoke-interface {p1, p0, v2, v3}, Lkc/t;->read(Lkc/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final G()Z
    .locals 4

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lkc/e;->b:J

    sget-object v2, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final J()I
    .locals 12

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    invoke-virtual {p0, v2, v3}, Lkc/e;->t(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    move v7, v3

    move v6, v5

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v1, v6, :cond_1

    and-int/lit8 v1, v0, 0x1f

    move v6, v2

    move v7, v4

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v1, v6, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v6, 0x3

    const/16 v7, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v1, v6, :cond_9

    and-int/lit8 v1, v0, 0x7

    const/4 v6, 0x4

    const/high16 v7, 0x10000

    :goto_0
    iget-wide v8, p0, Lkc/e;->b:J

    int-to-long v10, v6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    :goto_1
    if-ge v5, v6, :cond_4

    int-to-long v2, v5

    invoke-virtual {p0, v2, v3}, Lkc/e;->t(J)B

    move-result v0

    and-int/lit16 v8, v0, 0xc0

    if-ne v8, v4, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v3}, Lkc/e;->skip(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v10, v11}, Lkc/e;->skip(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_5

    goto :goto_3

    :cond_5
    const p0, 0xd800

    if-le p0, v1, :cond_6

    goto :goto_2

    :cond_6
    const p0, 0xdfff

    if-lt p0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v1, v7, :cond_a

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/io/EOFException;

    const-string v4, "size < "

    const-string v7, ": "

    invoke-static {v4, v6, v7}, Landroidx/activity/b;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lkc/e;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v2, [C

    sget-object v2, Lg2/m;->f:[C

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, p0, v3

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p0, v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lkc/e;->skip(J)V

    :goto_3
    const v1, 0xfffd

    :cond_a
    return v1

    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final M(I)Lokio/ByteString;
    .locals 8

    if-nez p1, :cond_0

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lv4/b;->B(JJJ)V

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v2, p1, :cond_3

    if-eqz v0, :cond_2

    iget v4, v0, Lkc/p;->c:I

    iget v5, v0, Lkc/p;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_3
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lkc/e;->a:Lkc/p;

    move v5, v1

    :goto_1
    if-ge v1, p1, :cond_5

    if-eqz p0, :cond_4

    iget-object v6, p0, Lkc/p;->a:[B

    aput-object v6, v0, v5

    iget v6, p0, Lkc/p;->c:I

    iget v7, p0, Lkc/p;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v5

    add-int v6, v5, v3

    iget v7, p0, Lkc/p;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lkc/p;->d:Z

    add-int/2addr v5, v6

    iget-object p0, p0, Lkc/p;->f:Lkc/p;

    goto :goto_1

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v4

    :cond_5
    new-instance p0, Lokio/SegmentedByteString;

    invoke-direct {p0, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    :goto_2
    return-object p0
.end method

.method public final N(I)Lkc/p;
    .locals 2

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lkc/e;->a:Lkc/p;

    if-nez v1, :cond_1

    invoke-static {}, Lkc/q;->b()Lkc/p;

    move-result-object p1

    iput-object p1, p0, Lkc/e;->a:Lkc/p;

    iput-object p1, p1, Lkc/p;->g:Lkc/p;

    iput-object p1, p1, Lkc/p;->f:Lkc/p;

    goto :goto_2

    :cond_1
    iget-object p0, v1, Lkc/p;->g:Lkc/p;

    if-eqz p0, :cond_4

    iget v1, p0, Lkc/p;->c:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_3

    iget-boolean p1, p0, Lkc/p;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lkc/q;->b()Lkc/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkc/p;->b(Lkc/p;)V

    :goto_2
    return-object p1

    :cond_4
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(II[B)V
    .locals 9

    const-string v0, "source"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p3

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v7, p2

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lv4/b;->B(JJJ)V

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkc/e;->N(I)Lkc/p;

    move-result-object v0

    sub-int v1, p2, p1

    iget v2, v0, Lkc/p;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lkc/p;->c:I

    add-int v3, p1, v1

    iget-object v4, v0, Lkc/p;->a:[B

    invoke-static {v2, p3, p1, v4, v3}, Lkotlin/collections/l;->e0(I[BI[BI)V

    iget p1, v0, Lkc/p;->c:I

    add-int/2addr p1, v1

    iput p1, v0, Lkc/p;->c:I

    move p1, v3

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lkc/e;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lkc/e;->b:J

    return-void
.end method

.method public final bridge synthetic P(Lokio/ByteString;)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1}, Lkc/e;->b0(Lokio/ByteString;)V

    return-object p0
.end method

.method public final Q(Lkc/e;)J
    .locals 4

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1, p0, v0, v1}, Lkc/e;->f0(Lkc/e;J)V

    :cond_0
    return-wide v0
.end method

.method public final U(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long v0, p1, v3

    :goto_1
    const/16 v2, 0xa

    int-to-byte v2, v2

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-wide v8, v0

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lkc/e;->x(JJB)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    invoke-static {p0, v5, v6}, Llc/a;->a(Lkc/e;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-wide v5, p0, Lkc/e;->b:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    sub-long v3, v0, v3

    invoke-virtual {p0, v3, v4}, Lkc/e;->t(J)B

    move-result v3

    const/16 v4, 0xd

    int-to-byte v4, v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lkc/e;->t(J)B

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-static {p0, v0, v1}, Llc/a;->a(Lkc/e;J)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance v6, Lkc/e;

    invoke-direct {v6}, Lkc/e;-><init>()V

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lkc/e;->b:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lkc/e;->i(Lkc/e;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\n not found: limit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkc/e;->b:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lkc/e;->m()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "limit < 0: "

    invoke-static {p0, p1, p2}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    iget-wide v0, p0, Lkc/e;->b:J

    invoke-virtual {p0, v0, v1}, Lkc/e;->skip(J)V

    return-void
.end method

.method public final b()Lkc/e;
    .locals 7

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    iget-wide v1, p0, Lkc/e;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lkc/e;->a:Lkc/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkc/p;->c()Lkc/p;

    move-result-object v3

    iput-object v3, v0, Lkc/e;->a:Lkc/p;

    iput-object v3, v3, Lkc/p;->g:Lkc/p;

    iput-object v3, v3, Lkc/p;->f:Lkc/p;

    iget-object v4, v1, Lkc/p;->f:Lkc/p;

    :goto_0
    if-eq v4, v1, :cond_3

    iget-object v5, v3, Lkc/p;->g:Lkc/p;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lkc/p;->c()Lkc/p;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkc/p;->b(Lkc/p;)V

    iget-object v4, v4, Lkc/p;->f:Lkc/p;

    goto :goto_0

    :cond_1
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_3
    iget-wide v1, p0, Lkc/e;->b:J

    iput-wide v1, v0, Lkc/e;->b:J

    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v2
.end method

.method public final b0(Lokio/ByteString;)V
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Lokio/ByteString;->write$okio(Lkc/e;II)V

    return-void
.end method

.method public final c()Lkc/e;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkc/e;->b()Lkc/e;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 5

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkc/e;->a:Lkc/p;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lkc/p;->g:Lkc/p;

    if-eqz p0, :cond_2

    iget v2, p0, Lkc/p;->c:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1

    iget-boolean v3, p0, Lkc/p;->e:Z

    if-eqz v3, :cond_1

    iget p0, p0, Lkc/p;->b:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2

    :cond_2
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_3
    invoke-static {}, Li4/f;->M()V

    throw v2
.end method

.method public final bridge synthetic e0(II[B)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkc/e;->O(II[B)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_1
    instance-of v3, v1, Lkc/e;

    if-nez v3, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_2
    iget-wide v5, v0, Lkc/e;->b:J

    check-cast v1, Lkc/e;

    iget-wide v7, v1, Lkc/e;->b:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lkc/e;->a:Lkc/p;

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    iget-object v1, v1, Lkc/e;->a:Lkc/p;

    if-eqz v1, :cond_b

    iget v6, v3, Lkc/p;->b:I

    iget v9, v1, Lkc/p;->b:I

    move-wide v10, v7

    :goto_2
    iget-wide v12, v0, Lkc/e;->b:J

    cmp-long v12, v10, v12

    if-gez v12, :cond_0

    iget v12, v3, Lkc/p;->c:I

    sub-int/2addr v12, v6

    iget v13, v1, Lkc/p;->c:I

    sub-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v7

    :goto_3
    cmp-long v16, v14, v12

    if-gez v16, :cond_6

    add-int/lit8 v16, v6, 0x1

    iget-object v2, v3, Lkc/p;->a:[B

    aget-byte v2, v2, v6

    add-int/lit8 v6, v9, 0x1

    iget-object v4, v1, Lkc/p;->a:[B

    aget-byte v4, v4, v9

    if-eq v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v17, 0x1

    add-long v14, v14, v17

    move v9, v6

    move/from16 v6, v16

    goto :goto_3

    :cond_6
    iget v2, v3, Lkc/p;->c:I

    if-ne v6, v2, :cond_8

    iget-object v2, v3, Lkc/p;->f:Lkc/p;

    if-eqz v2, :cond_7

    iget v3, v2, Lkc/p;->b:I

    move v6, v3

    move-object v3, v2

    goto :goto_4

    :cond_7
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_8
    :goto_4
    iget v2, v1, Lkc/p;->c:I

    if-ne v9, v2, :cond_a

    iget-object v1, v1, Lkc/p;->f:Lkc/p;

    if-eqz v1, :cond_9

    iget v2, v1, Lkc/p;->b:I

    move v9, v2

    goto :goto_5

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_a
    :goto_5
    add-long/2addr v10, v12

    goto :goto_2

    :goto_6
    return v2

    :cond_b
    invoke-static {}, Li4/f;->M()V

    throw v5

    :cond_c
    invoke-static {}, Li4/f;->M()V

    throw v5
.end method

.method public final f0(Lkc/e;J)V
    .locals 12

    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_14

    iget-wide v3, p1, Lkc/e;->b:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lv4/b;->B(JJJ)V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_13

    iget-object v2, p1, Lkc/e;->a:Lkc/p;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    iget v4, v2, Lkc/p;->c:I

    iget v5, v2, Lkc/p;->b:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v6, p2, v6

    const/16 v7, 0x2000

    if-gez v6, :cond_8

    iget-object v6, p0, Lkc/e;->a:Lkc/p;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lkc/p;->g:Lkc/p;

    goto :goto_2

    :cond_1
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_3

    iget-boolean v8, v6, Lkc/p;->e:Z

    if-eqz v8, :cond_3

    iget v8, v6, Lkc/p;->c:I

    int-to-long v8, v8

    add-long/2addr v8, p2

    iget-boolean v10, v6, Lkc/p;->d:Z

    if-eqz v10, :cond_2

    move v10, v1

    goto :goto_3

    :cond_2
    iget v10, v6, Lkc/p;->b:I

    :goto_3
    int-to-long v10, v10

    sub-long/2addr v8, v10

    int-to-long v10, v7

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    long-to-int v0, p2

    invoke-virtual {v2, v6, v0}, Lkc/p;->d(Lkc/p;I)V

    iget-wide v0, p1, Lkc/e;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lkc/e;->b:J

    iget-wide v0, p0, Lkc/e;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lkc/e;->b:J

    goto/16 :goto_a

    :cond_3
    long-to-int v6, p2

    if-lez v6, :cond_4

    sub-int/2addr v4, v5

    if-gt v6, v4, :cond_4

    move v4, v0

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-eqz v4, :cond_7

    const/16 v4, 0x400

    if-lt v6, v4, :cond_5

    invoke-virtual {v2}, Lkc/p;->c()Lkc/p;

    move-result-object v4

    goto :goto_5

    :cond_5
    invoke-static {}, Lkc/q;->b()Lkc/p;

    move-result-object v4

    iget v5, v2, Lkc/p;->b:I

    add-int v8, v5, v6

    iget-object v9, v2, Lkc/p;->a:[B

    iget-object v10, v4, Lkc/p;->a:[B

    invoke-static {v1, v9, v5, v10, v8}, Lkotlin/collections/l;->e0(I[BI[BI)V

    :goto_5
    iget v5, v4, Lkc/p;->b:I

    add-int/2addr v5, v6

    iput v5, v4, Lkc/p;->c:I

    iget v5, v2, Lkc/p;->b:I

    add-int/2addr v5, v6

    iput v5, v2, Lkc/p;->b:I

    iget-object v2, v2, Lkc/p;->g:Lkc/p;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Lkc/p;->b(Lkc/p;)V

    iput-object v4, p1, Lkc/e;->a:Lkc/p;

    goto :goto_6

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_6
    iget-object v2, p1, Lkc/e;->a:Lkc/p;

    if-eqz v2, :cond_11

    iget v4, v2, Lkc/p;->c:I

    iget v5, v2, Lkc/p;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v2}, Lkc/p;->a()Lkc/p;

    move-result-object v6

    iput-object v6, p1, Lkc/e;->a:Lkc/p;

    iget-object v6, p0, Lkc/e;->a:Lkc/p;

    if-nez v6, :cond_9

    iput-object v2, p0, Lkc/e;->a:Lkc/p;

    iput-object v2, v2, Lkc/p;->g:Lkc/p;

    iput-object v2, v2, Lkc/p;->f:Lkc/p;

    goto :goto_9

    :cond_9
    iget-object v6, v6, Lkc/p;->g:Lkc/p;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v2}, Lkc/p;->b(Lkc/p;)V

    iget-object v6, v2, Lkc/p;->g:Lkc/p;

    if-eq v6, v2, :cond_a

    move v8, v0

    goto :goto_7

    :cond_a
    move v8, v1

    :goto_7
    if-eqz v8, :cond_f

    if-eqz v6, :cond_e

    iget-boolean v3, v6, Lkc/p;->e:Z

    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    iget v3, v2, Lkc/p;->c:I

    iget v8, v2, Lkc/p;->b:I

    sub-int/2addr v3, v8

    iget v8, v6, Lkc/p;->c:I

    sub-int/2addr v7, v8

    iget-boolean v8, v6, Lkc/p;->d:Z

    if-eqz v8, :cond_c

    move v8, v1

    goto :goto_8

    :cond_c
    iget v8, v6, Lkc/p;->b:I

    :goto_8
    add-int/2addr v7, v8

    if-le v3, v7, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v2, v6, v3}, Lkc/p;->d(Lkc/p;I)V

    invoke-virtual {v2}, Lkc/p;->a()Lkc/p;

    invoke-static {v2}, Lkc/q;->a(Lkc/p;)V

    :goto_9
    iget-wide v2, p1, Lkc/e;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lkc/e;->b:J

    iget-wide v2, p0, Lkc/e;->b:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    sub-long/2addr p2, v4

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot compact"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_11
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_12
    invoke-static {}, Li4/f;->M()V

    throw v3

    :cond_13
    :goto_a
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final h0(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkc/e;->N(I)Lkc/p;

    move-result-object v0

    iget v1, v0, Lkc/p;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lkc/p;->c:I

    int-to-byte p1, p1

    iget-object v0, v0, Lkc/p;->a:[B

    aput-byte p1, v0, v1

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_0
    iget v2, v0, Lkc/p;->b:I

    iget v3, v0, Lkc/p;->c:I

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lkc/p;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lkc/e;->a:Lkc/p;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final i(Lkc/e;JJ)V
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lkc/e;->b:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lv4/b;->B(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p1, Lkc/e;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lkc/e;->b:J

    iget-object p0, p0, Lkc/e;->a:Lkc/p;

    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_6

    iget v3, p0, Lkc/p;->c:I

    iget v4, p0, Lkc/p;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    sub-long/2addr p2, v3

    iget-object p0, p0, Lkc/p;->f:Lkc/p;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lkc/p;->c()Lkc/p;

    move-result-object v3

    iget v4, v3, Lkc/p;->b:I

    long-to-int p2, p2

    add-int/2addr v4, p2

    iput v4, v3, Lkc/p;->b:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    iget p2, v3, Lkc/p;->c:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lkc/p;->c:I

    iget-object p2, p1, Lkc/e;->a:Lkc/p;

    if-nez p2, :cond_2

    iput-object v3, v3, Lkc/p;->g:Lkc/p;

    iput-object v3, v3, Lkc/p;->f:Lkc/p;

    iput-object v3, p1, Lkc/e;->a:Lkc/p;

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lkc/p;->g:Lkc/p;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Lkc/p;->b(Lkc/p;)V

    :goto_2
    iget p2, v3, Lkc/p;->c:I

    iget p3, v3, Lkc/p;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object p0, p0, Lkc/p;->f:Lkc/p;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v2

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {}, Li4/f;->M()V

    throw v2
.end method

.method public final isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic j(J)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkc/e;->x0(J)Lkc/e;

    return-object p0
.end method

.method public final j0(J)V
    .locals 2

    iget-wide v0, p0, Lkc/e;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic k0(Ljava/lang/String;)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1}, Lkc/e;->C0(Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lokio/ByteString;
    .locals 2

    iget-wide v0, p0, Lkc/e;->b:J

    invoke-virtual {p0, v0, v1}, Lkc/e;->n(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final n(J)Lokio/ByteString;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-wide v0, p0, Lkc/e;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const/16 v0, 0x1000

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lkc/e;->M(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lkc/e;->skip(J)V

    goto :goto_1

    :cond_1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lkc/e;->y(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic n0(J)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkc/e;->w0(J)Lkc/e;

    return-object p0
.end method

.method public final p(Lkc/m;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llc/a;->b(Lkc/e;Lkc/m;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lkc/m;->a:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lkc/e;->skip(J)V

    :goto_0
    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lkc/p;->c:I

    iget v3, v0, Lkc/p;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lkc/p;->a:[B

    iget v3, v0, Lkc/p;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lkc/p;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lkc/p;->b:I

    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    iget v2, v0, Lkc/p;->c:I

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object p1

    iput-object p1, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lv4/b;->B(JJJ)V

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_0

    iget v1, v0, Lkc/p;->c:I

    iget v2, v0, Lkc/p;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Lkc/p;->b:I

    add-int v2, v1, p3

    iget-object v3, v0, Lkc/p;->a:[B

    invoke-static {p2, v3, v1, p1, v2}, Lkotlin/collections/l;->e0(I[BI[BI)V

    iget p1, v0, Lkc/p;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lkc/p;->b:I

    .line 2
    iget-wide v1, p0, Lkc/e;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 3
    iput-wide v1, p0, Lkc/e;->b:J

    .line 4
    iget p2, v0, Lkc/p;->c:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object p1

    iput-object p1, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public final read(Lkc/e;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 5
    iget-wide v2, p0, Lkc/e;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 6
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lkc/e;->f0(Lkc/e;J)V

    move-wide p0, p2

    :goto_1
    return-wide p0

    :cond_3
    const-string p0, "byteCount < 0: "

    .line 7
    invoke-static {p0, p2, p3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readByte()B
    .locals 8

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkc/e;->a:Lkc/p;

    if-eqz v2, :cond_1

    iget v3, v2, Lkc/p;->b:I

    iget v4, v2, Lkc/p;->c:I

    add-int/lit8 v5, v3, 0x1

    iget-object v6, v2, Lkc/p;->a:[B

    aget-byte v3, v6, v3

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lkc/e;->b:J

    if-ne v5, v4, :cond_0

    invoke-virtual {v2}, Lkc/p;->a()Lkc/p;

    move-result-object v0

    iput-object v0, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v2}, Lkc/q;->a(Lkc/p;)V

    goto :goto_0

    :cond_0
    iput v5, v2, Lkc/p;->b:I

    :goto_0
    return v3

    :cond_1
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readInt()I
    .locals 10

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v4, p0, Lkc/e;->a:Lkc/p;

    if-eqz v4, :cond_2

    iget v5, v4, Lkc/p;->b:I

    iget v6, v4, Lkc/p;->c:I

    sub-int v7, v6, v5

    int-to-long v7, v7

    cmp-long v7, v7, v2

    if-gez v7, :cond_0

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v5, 0x1

    iget-object v8, v4, Lkc/p;->a:[B

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    if-ne v9, v6, :cond_1

    invoke-virtual {v4}, Lkc/p;->a()Lkc/p;

    move-result-object v0

    iput-object v0, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v4}, Lkc/q;->a(Lkc/p;)V

    goto :goto_0

    :cond_1
    iput v9, v4, Lkc/p;->b:I

    :goto_0
    move p0, v5

    :goto_1
    return p0

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readShort()S
    .locals 10

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v4, p0, Lkc/e;->a:Lkc/p;

    if-eqz v4, :cond_2

    iget v5, v4, Lkc/p;->b:I

    iget v6, v4, Lkc/p;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lkc/e;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v5, 0x1

    iget-object v8, v4, Lkc/p;->a:[B

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    if-ne v9, v6, :cond_1

    invoke-virtual {v4}, Lkc/p;->a()Lkc/p;

    move-result-object v0

    iput-object v0, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v4}, Lkc/q;->a(Lkc/p;)V

    goto :goto_0

    :cond_1
    iput v9, v4, Lkc/p;->b:I

    :goto_0
    int-to-short p0, v5

    :goto_1
    return p0

    :cond_2
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final request(J)Z
    .locals 2

    const-wide p1, 0x7fffffffffffffffL

    iget-wide v0, p0, Lkc/e;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s0()J
    .locals 14

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move v1, v0

    move v4, v1

    move-wide v5, v2

    :cond_0
    iget-object v7, p0, Lkc/e;->a:Lkc/p;

    if-eqz v7, :cond_9

    iget v8, v7, Lkc/p;->b:I

    iget v9, v7, Lkc/p;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    iget-object v10, v7, Lkc/p;->a:[B

    aget-byte v10, v10, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_1

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_1

    sub-int v11, v10, v11

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_4

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_4

    :goto_1
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v5

    cmp-long v12, v12, v2

    if-nez v12, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v5, v10

    int-to-long v10, v11

    or-long/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lkc/e;

    invoke-direct {p0}, Lkc/e;-><init>()V

    invoke-virtual {p0, v5, v6}, Lkc/e;->x0(J)Lkc/e;

    invoke-virtual {p0, v10}, Lkc/e;->h0(I)V

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lkc/e;->H()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Number too large: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v4, 0x1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lg2/m;->f:[C

    shr-int/lit8 v3, v10, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v2, v3

    aput-char v3, v1, v0

    and-int/lit8 v0, v10, 0xf

    aget-char v0, v2, v0

    aput-char v0, v1, v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    invoke-virtual {v7}, Lkc/p;->a()Lkc/p;

    move-result-object v8

    iput-object v8, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v7}, Lkc/q;->a(Lkc/p;)V

    goto :goto_4

    :cond_7
    iput v8, v7, Lkc/p;->b:I

    :goto_4
    if-nez v4, :cond_8

    iget-object v7, p0, Lkc/e;->a:Lkc/p;

    if-nez v7, :cond_0

    :cond_8
    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v0, v1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lkc/e;->b:J

    return-wide v5

    :cond_9
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final skip(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_1

    iget v1, v0, Lkc/p;->c:I

    iget v2, v0, Lkc/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lkc/e;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lkc/e;->b:J

    sub-long/2addr p1, v4

    iget v2, v0, Lkc/p;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lkc/p;->b:I

    iget v1, v0, Lkc/p;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object v1

    iput-object v1, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public final t(J)B
    .locals 7

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lv4/b;->B(JJJ)V

    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lkc/e;->b:J

    sub-long v4, v2, p1

    cmp-long p0, v4, p1

    if-gez p0, :cond_2

    :goto_0
    cmp-long p0, v2, p1

    if-lez p0, :cond_1

    iget-object v0, v0, Lkc/p;->g:Lkc/p;

    if-eqz v0, :cond_0

    iget p0, v0, Lkc/p;->c:I

    iget v4, v0, Lkc/p;->b:I

    sub-int/2addr p0, v4

    int-to-long v4, p0

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_1
    iget p0, v0, Lkc/p;->b:I

    int-to-long v4, p0

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p0, v4

    iget-object p1, v0, Lkc/p;->a:[B

    aget-byte p0, p1, p0

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    iget p0, v0, Lkc/p;->c:I

    iget v4, v0, Lkc/p;->b:I

    sub-int/2addr p0, v4

    int-to-long v5, p0

    add-long/2addr v5, v2

    cmp-long p0, v5, p1

    if-lez p0, :cond_3

    int-to-long v4, v4

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    long-to-int p0, v4

    iget-object p1, v0, Lkc/p;->a:[B

    aget-byte p0, p1, p0

    :goto_2
    return p0

    :cond_3
    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_4

    move-wide v2, v5

    goto :goto_1

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final t0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lkc/e;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lkc/e;->z(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final timeout()Lkc/v;
    .locals 0

    sget-object p0, Lkc/v;->d:Lkc/u;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lkc/e;->b:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lkc/e;->M(I)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkc/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v0()Lcom/fasterxml/jackson/databind/util/e;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/e;-><init>(Lkc/g;I)V

    return-object v0
.end method

.method public final w0(J)Lkc/e;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lkc/e;->C0(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/32 v4, 0x5f5e100

    cmp-long v4, p1, v4

    const/16 v5, 0xa

    if-gez v4, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v4, p1, v6

    if-gez v4, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v4, p1, v6

    if-gez v4, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v3, p1, v3

    if-gez v3, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v3, p1, v3

    if-gez v3, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v3, p1, v3

    if-gez v3, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v3, p1, v3

    if-gez v3, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    if-gez v3, :cond_b

    const/16 v3, 0x9

    goto :goto_1

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d

    const/16 v3, 0xb

    goto :goto_1

    :cond_d
    const/16 v3, 0xc

    goto :goto_1

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_f

    const/16 v3, 0xd

    goto :goto_1

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_10

    const/16 v3, 0xe

    goto :goto_1

    :cond_10
    const/16 v3, 0xf

    goto :goto_1

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    const/16 v3, 0x10

    goto :goto_1

    :cond_12
    const/16 v3, 0x11

    goto :goto_1

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_14

    const/16 v3, 0x12

    goto :goto_1

    :cond_14
    const/16 v3, 0x13

    :goto_1
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    invoke-virtual {p0, v3}, Lkc/e;->N(I)Lkc/p;

    move-result-object v4

    iget v6, v4, Lkc/p;->c:I

    add-int/2addr v6, v3

    :goto_2
    cmp-long v7, p1, v0

    iget-object v8, v4, Lkc/p;->a:[B

    if-eqz v7, :cond_16

    int-to-long v9, v5

    rem-long v11, p1, v9

    long-to-int v7, v11

    add-int/lit8 v6, v6, -0x1

    sget-object v11, Llc/a;->a:[B

    aget-byte v7, v11, v7

    aput-byte v7, v8, v6

    div-long/2addr p1, v9

    goto :goto_2

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    aput-byte p1, v8, v6

    :cond_17
    iget p1, v4, Lkc/p;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Lkc/p;->c:I

    iget-wide p1, p0, Lkc/e;->b:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lkc/e;->b:J

    :goto_3
    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    const-string v0, "source"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lkc/e;->N(I)Lkc/p;

    move-result-object v2

    iget v3, v2, Lkc/p;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lkc/p;->a:[B

    iget v5, v2, Lkc/p;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lkc/p;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lkc/p;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lkc/e;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lkc/e;->b:J

    return v0
.end method

.method public final write([B)Lkc/f;
    .locals 2

    const-string v0, "source"

    .line 2
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lkc/e;->O(II[B)V

    return-object p0
.end method

.method public final bridge synthetic writeByte(I)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1}, Lkc/e;->y0(I)V

    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Lkc/f;
    .locals 0

    invoke-virtual {p0, p1}, Lkc/e;->z0(I)V

    return-object p0
.end method

.method public final x(JJB)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v1

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v8, v3, v1

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_10

    iget-wide v8, v0, Lkc/e;->b:J

    cmp-long v10, v3, v8

    if-lez v10, :cond_2

    move-wide v3, v8

    :cond_2
    cmp-long v10, v1, v3

    if-nez v10, :cond_4

    :cond_3
    const-wide/16 v11, -0x1

    goto/16 :goto_8

    :cond_4
    iget-object v0, v0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_3

    sub-long v13, v8, v1

    cmp-long v10, v13, v1

    const/4 v13, 0x0

    if-gez v10, :cond_a

    :goto_2
    cmp-long v6, v8, v1

    if-lez v6, :cond_6

    iget-object v0, v0, Lkc/p;->g:Lkc/p;

    if-eqz v0, :cond_5

    iget v6, v0, Lkc/p;->c:I

    iget v7, v0, Lkc/p;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v8, v6

    goto :goto_2

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v13

    :cond_6
    :goto_3
    cmp-long v6, v8, v3

    if-gez v6, :cond_3

    iget-object v6, v0, Lkc/p;->a:[B

    iget v7, v0, Lkc/p;->c:I

    int-to-long v14, v7

    iget v7, v0, Lkc/p;->b:I

    int-to-long v11, v7

    add-long/2addr v11, v3

    sub-long/2addr v11, v8

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v7, v10

    iget v10, v0, Lkc/p;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v1

    sub-long/2addr v10, v8

    long-to-int v1, v10

    :goto_4
    if-ge v1, v7, :cond_8

    aget-byte v2, v6, v1

    if-ne v2, v5, :cond_7

    iget v0, v0, Lkc/p;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long v11, v0, v8

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    iget v1, v0, Lkc/p;->c:I

    iget v2, v0, Lkc/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_9

    move-wide v1, v8

    goto :goto_3

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v13

    :cond_a
    :goto_5
    iget v8, v0, Lkc/p;->c:I

    iget v9, v0, Lkc/p;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v10, v8, v1

    if-lez v10, :cond_e

    :goto_6
    cmp-long v8, v6, v3

    if-gez v8, :cond_3

    iget-object v8, v0, Lkc/p;->a:[B

    iget v9, v0, Lkc/p;->c:I

    int-to-long v9, v9

    iget v11, v0, Lkc/p;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v3

    sub-long/2addr v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v0, Lkc/p;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v1

    sub-long/2addr v10, v6

    long-to-int v1, v10

    :goto_7
    if-ge v1, v9, :cond_c

    aget-byte v2, v8, v1

    if-ne v2, v5, :cond_b

    iget v0, v0, Lkc/p;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long v11, v0, v6

    goto :goto_8

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    iget v1, v0, Lkc/p;->c:I

    iget v2, v0, Lkc/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_d

    move-wide v1, v6

    goto :goto_6

    :cond_d
    invoke-static {}, Li4/f;->M()V

    throw v13

    :cond_e
    iget-object v0, v0, Lkc/p;->f:Lkc/p;

    if-eqz v0, :cond_f

    move-wide v6, v8

    goto :goto_5

    :cond_f
    invoke-static {}, Li4/f;->M()V

    throw v13

    :goto_8
    return-wide v11

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lkc/e;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " toIndex="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final x0(J)Lkc/e;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lkc/e;->h0(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lkc/e;->N(I)Lkc/p;

    move-result-object v2

    iget v3, v2, Lkc/p;->c:I

    add-int v5, v3, v1

    sub-int/2addr v5, v0

    :goto_0
    if-lt v5, v3, :cond_1

    sget-object v0, Llc/a;->a:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v0, v0, v6

    iget-object v6, v2, Lkc/p;->a:[B

    aput-byte v0, v6, v5

    ushr-long/2addr p1, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lkc/p;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lkc/p;->c:I

    iget-wide p1, p0, Lkc/e;->b:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lkc/e;->b:J

    :goto_1
    return-object p0
.end method

.method public final y(J)[B
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-wide v2, p0, Lkc/e;->b:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_3

    long-to-int p1, p1

    new-array p2, p1, [B

    :goto_1
    if-ge v1, p1, :cond_2

    sub-int v0, p1, v1

    invoke-virtual {p0, p2, v1, v0}, Lkc/e;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y0(I)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lkc/e;->N(I)Lkc/p;

    move-result-object v0

    iget v1, v0, Lkc/p;->c:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, v0, Lkc/p;->a:[B

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    iput v1, v0, Lkc/p;->c:I

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    return-void
.end method

.method public final z(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const v1, 0x7fffffff

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    iget-wide v1, p0, Lkc/e;->b:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_5

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lkc/e;->a:Lkc/p;

    if-eqz v0, :cond_4

    iget v1, v0, Lkc/p;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lkc/p;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lkc/e;->y(J)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_2
    long-to-int v2, p1

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lkc/p;->a:[B

    invoke-direct {v3, v4, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lkc/p;->b:I

    add-int/2addr p3, v2

    iput p3, v0, Lkc/p;->b:I

    iget-wide v1, p0, Lkc/e;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lkc/e;->b:J

    iget p1, v0, Lkc/p;->c:I

    if-ne p3, p1, :cond_3

    invoke-virtual {v0}, Lkc/p;->a()Lkc/p;

    move-result-object p1

    iput-object p1, p0, Lkc/e;->a:Lkc/p;

    invoke-static {v0}, Lkc/q;->a(Lkc/p;)V

    :cond_3
    return-object v3

    :cond_4
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6
    const-string p0, "byteCount: "

    invoke-static {p0, p1, p2}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z0(I)V
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkc/e;->N(I)Lkc/p;

    move-result-object v0

    iget v1, v0, Lkc/p;->c:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, v0, Lkc/p;->a:[B

    aput-byte v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    iput v1, v0, Lkc/p;->c:I

    iget-wide v0, p0, Lkc/e;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkc/e;->b:J

    return-void
.end method
