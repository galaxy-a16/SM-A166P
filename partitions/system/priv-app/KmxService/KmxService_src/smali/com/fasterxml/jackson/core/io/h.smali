.class public abstract Lcom/fasterxml/jackson/core/io/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:[I

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/h;->a:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/h;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/h;->c:[I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    move v5, v0

    :goto_2
    if-ge v5, v3, :cond_0

    add-int/lit8 v6, v1, 0x30

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x30

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x30

    or-int/2addr v6, v7

    sget-object v7, Lcom/fasterxml/jackson/core/io/h;->c:[I

    add-int/lit8 v8, v2, 0x1

    aput v6, v7, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, "10"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/h;->d:[Ljava/lang/String;

    const-string v1, "-1"

    const-string v2, "-2"

    const-string v3, "-3"

    const-string v4, "-4"

    const-string v5, "-5"

    const-string v6, "-6"

    const-string v7, "-7"

    const-string v8, "-8"

    const-string v9, "-9"

    const-string v10, "-10"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/h;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a(II[B)I
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget p0, v0, p0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p1, 0x1

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    return v0
.end method

.method public static b(I[CI)I
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget p0, v0, p0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-char v1, v1

    aput-char v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-char p0, p0

    aput-char p0, p1, p2

    return v0
.end method

.method public static c(II[B)I
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    add-int/lit8 p0, p1, 0x1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    move p1, p0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    move p1, p0

    :cond_1
    add-int/lit8 p0, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    return p0
.end method

.method public static d(I[CI)I
    .locals 2

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget v0, v0, p0

    const/16 v1, 0x9

    if-le p0, v1, :cond_1

    const/16 v1, 0x63

    if-le p0, v1, :cond_0

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x10

    int-to-char v1, v1

    aput-char v1, p1, p2

    move p2, p0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p1, p2

    move p2, p0

    :cond_1
    add-int/lit8 p0, p2, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, p1, p2

    return p0
.end method

.method public static e(II[B)I
    .locals 5

    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    sget-object v2, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget v1, v2, v1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p2, p1

    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v3, p1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    aget p1, v2, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    aget p0, v2, p0

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, v0, 0x1

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    return p1
.end method

.method public static f(I[CI)I
    .locals 6

    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    div-int/lit16 v1, v0, 0x3e8

    sget-object v2, Lcom/fasterxml/jackson/core/io/h;->c:[I

    aget v3, v2, v1

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-char v5, v5

    aput-char v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    shr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, p2

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    aget p2, v2, v0

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    aput-char v1, p1, v4

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 p2, p2, 0x7f

    int-to-char p2, p2

    aput-char p2, p1, v1

    aget p0, v2, p0

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    and-int/lit8 p0, p0, 0x7f

    int-to-char p0, p0

    aput-char p0, p1, v0

    return p2
.end method

.method public static g(D)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(II[B)I
    .locals 4

    if-gez p0, :cond_2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/core/io/h;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p2, p1

    neg-int p0, p0

    move p1, v0

    :cond_2
    const v0, 0xf4240

    if-ge p0, v0, :cond_5

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_4

    const/16 v0, 0xa

    if-ge p0, v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result v0

    goto :goto_1

    :cond_4
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->a(II[B)I

    move-result v0

    :goto_1
    return v0

    :cond_5
    const v0, 0x3b9aca00

    if-lt p0, v0, :cond_7

    sub-int/2addr p0, v0

    if-lt p0, v0, :cond_6

    sub-int/2addr p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x32

    aput-byte v1, p2, p1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x31

    aput-byte v1, p2, p1

    :goto_2
    invoke-static {p0, v0, p2}, Lcom/fasterxml/jackson/core/io/h;->e(II[B)I

    move-result p0

    return p0

    :cond_7
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->a(II[B)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->a(II[B)I

    move-result p0

    return p0
.end method

.method public static i(I[CI)I
    .locals 3

    if-gez p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/core/io/h;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p2

    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    neg-int p0, p0

    move p2, v0

    :cond_1
    const v0, 0xf4240

    if-ge p0, v0, :cond_4

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    aput-char p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p0

    return p0

    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p2

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->b(I[CI)I

    move-result p0

    return p0

    :cond_4
    const v0, 0x3b9aca00

    if-lt p0, v0, :cond_6

    sub-int/2addr p0, v0

    if-lt p0, v0, :cond_5

    sub-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x32

    aput-char v1, p1, p2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x31

    aput-char v1, p1, p2

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/h;->f(I[CI)I

    move-result p0

    return p0

    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    mul-int/lit16 v1, v0, 0x3e8

    sub-int/2addr p0, v1

    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v0, v2

    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/h;->b(I[CI)I

    move-result p2

    goto :goto_0
.end method

.method public static j(JI[B)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p0

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/core/io/h;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-byte v1, p3, p2

    neg-long p0, p0

    move p2, v0

    goto :goto_1

    :cond_3
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->h(II[B)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_9

    long-to-int v0, v2

    const v1, 0xf4240

    sget-object v2, Lcom/fasterxml/jackson/core/io/h;->c:[I

    if-ge v0, v1, :cond_8

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result p2

    goto/16 :goto_3

    :cond_5
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v3, v1, 0x3e8

    sub-int/2addr v0, v3

    aget v3, v2, v1

    const/16 v4, 0x9

    if-le v1, v4, :cond_7

    const/16 v4, 0x63

    if-le v1, v4, :cond_6

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    aput-byte v4, p3, p2

    move p2, v1

    :cond_6
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, p2

    move p2, v1

    :cond_7
    add-int/lit8 v1, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p3, p2

    aget p2, v2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p3, v1

    goto :goto_2

    :cond_8
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v3, v1, 0x3e8

    sub-int/2addr v0, v3

    div-int/lit16 v3, v1, 0x3e8

    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v1, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result p2

    aget v1, v2, v1

    add-int/lit8 v3, p2, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p3, p2

    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    add-int/lit8 v3, p2, 0x1

    int-to-byte v1, v1

    aput-byte v1, p3, p2

    aget p2, v2, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p3, v1

    :goto_2
    move p2, v0

    goto :goto_3

    :cond_9
    div-long v4, v2, v0

    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    long-to-int v0, v4

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->c(II[B)I

    move-result p2

    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->e(II[B)I

    move-result p2

    :goto_3
    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->e(II[B)I

    move-result p0

    return p0
.end method

.method public static k(J[CI)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p0

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/fasterxml/jackson/core/io/h;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr p1, p3

    return p1

    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    neg-long p0, p0

    move p3, v0

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->i(I[CI)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    mul-long v4, v2, v0

    sub-long/2addr p0, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_8

    long-to-int v0, v2

    const v1, 0xf4240

    sget-object v2, Lcom/fasterxml/jackson/core/io/h;->c:[I

    if-ge v0, v1, :cond_7

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_4

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p3

    goto/16 :goto_2

    :cond_4
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v3, v1, 0x3e8

    sub-int/2addr v0, v3

    aget v3, v2, v1

    const/16 v4, 0x9

    if-le v1, v4, :cond_6

    const/16 v4, 0x63

    if-le v1, v4, :cond_5

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v4, v3, 0x10

    int-to-char v4, v4

    aput-char v4, p2, p3

    move p3, v1

    :cond_5
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v4, v3, 0x8

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, p2, p3

    move p3, v1

    :cond_6
    add-int/lit8 v1, p3, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-char v3, v3

    aput-char v3, p2, p3

    aget p3, v2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p3, 0x10

    int-to-char v2, v2

    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p3, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 p3, p3, 0x7f

    int-to-char p3, p3

    aput-char p3, p2, v1

    goto :goto_1

    :cond_7
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v3, v1, 0x3e8

    sub-int/2addr v0, v3

    div-int/lit16 v3, v1, 0x3e8

    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v1, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p3

    aget v1, v2, v1

    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-char v4, v4

    aput-char v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    aput-char v4, p2, v3

    add-int/lit8 v3, p3, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-char v1, v1

    aput-char v1, p2, p3

    aget p3, v2, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, p3, 0x10

    int-to-char v1, v1

    aput-char v1, p2, v3

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p3, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 p3, p3, 0x7f

    int-to-char p3, p3

    aput-char p3, p2, v1

    :goto_1
    move p3, v0

    goto :goto_2

    :cond_8
    div-long v4, v2, v0

    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    long-to-int v0, v4

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->d(I[CI)I

    move-result p3

    long-to-int v0, v2

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->f(I[CI)I

    move-result p3

    :goto_2
    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Lcom/fasterxml/jackson/core/io/h;->f(I[CI)I

    move-result p0

    return p0
.end method

.method public static l(DZ)Ljava/lang/String;
    .locals 11

    if-eqz p2, :cond_10

    new-instance p2, Lb2/a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lb2/a;-><init>(I)V

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v1, 0xfffffffffffffL

    and-long/2addr v1, p0

    const/16 v3, 0x34

    ushr-long v3, p0, v3

    long-to-int v3, v3

    const/16 v4, 0x7ff

    and-int/2addr v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-ge v3, v4, :cond_8

    const/4 v4, -0x1

    iput v4, p2, Lb2/a;->c:I

    cmp-long p0, p0, v9

    if-gez p0, :cond_0

    const/16 p1, 0x2d

    invoke-virtual {p2, p1}, Lb2/a;->a(I)V

    :cond_0
    if-eqz v3, :cond_4

    rsub-int p0, v3, 0x433

    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v1, v3

    if-lez p0, :cond_1

    move p1, v8

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const/16 v3, 0x35

    if-ge p0, v3, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    shr-long v3, v1, p0

    shl-long v9, v3, p0

    cmp-long p1, v9, v1

    if-nez p1, :cond_3

    invoke-virtual {p2, v0, v3, v4}, Lb2/a;->j(IJ)V

    goto :goto_2

    :cond_3
    neg-int p0, p0

    invoke-virtual {p2, p0, v0, v1, v2}, Lb2/a;->l(IIJ)V

    goto :goto_2

    :cond_4
    cmp-long p1, v1, v9

    if-eqz p1, :cond_6

    const-wide/16 p0, 0x3

    cmp-long p0, v1, p0

    const/16 p1, -0x432

    if-gez p0, :cond_5

    const-wide/16 v9, 0xa

    mul-long/2addr v1, v9

    invoke-virtual {p2, p1, v4, v1, v2}, Lb2/a;->l(IIJ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p1, v0, v1, v2}, Lb2/a;->l(IIJ)V

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    move v0, v8

    goto :goto_2

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    cmp-long v0, v1, v9

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_2

    :cond_9
    cmp-long p0, p0, v9

    if-lez p0, :cond_a

    move v0, v6

    goto :goto_2

    :cond_a
    move v0, v7

    :goto_2
    if-eqz v0, :cond_f

    if-eq v0, v8, :cond_e

    if-eq v0, v5, :cond_d

    if-eq v0, v6, :cond_c

    if-eq v0, v7, :cond_b

    const-string p0, "NaN"

    goto :goto_3

    :cond_b
    const-string p0, "-Infinity"

    goto :goto_3

    :cond_c
    const-string p0, "Infinity"

    goto :goto_3

    :cond_d
    const-string p0, "-0.0"

    goto :goto_3

    :cond_e
    const-string p0, "0.0"

    goto :goto_3

    :cond_f
    invoke-virtual {p2}, Lb2/a;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static m(FZ)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_10

    new-instance p1, Lb2/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lb2/a;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    const v1, 0x7fffff

    and-int/2addr v1, p0

    ushr-int/lit8 v2, p0, 0x17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-ge v2, v3, :cond_8

    const/4 v3, -0x1

    iput v3, p1, Lb2/a;->c:I

    if-gez p0, :cond_0

    const/16 v7, 0x2d

    invoke-virtual {p1, v7}, Lb2/a;->a(I)V

    :cond_0
    const/4 v7, 0x0

    if-eqz v2, :cond_4

    rsub-int p0, v2, 0x96

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    if-lez p0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_0
    const/16 v3, 0x18

    if-ge p0, v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    shr-int v2, v1, p0

    shl-int v3, v2, p0

    if-ne v3, v1, :cond_3

    invoke-virtual {p1, v2, v7}, Lb2/a;->i(II)V

    goto :goto_2

    :cond_3
    neg-int p0, p0

    invoke-virtual {p1, p0, v1, v7}, Lb2/a;->k(III)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    const/16 p0, 0x8

    const/16 v2, -0x95

    if-ge v1, p0, :cond_5

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v2, v1, v3}, Lb2/a;->k(III)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2, v1, v7}, Lb2/a;->k(III)V

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    move v7, v0

    goto :goto_2

    :cond_7
    move v7, v4

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    const/4 v7, 0x5

    goto :goto_2

    :cond_9
    if-lez p0, :cond_a

    move v7, v5

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    if-eqz v7, :cond_f

    if-eq v7, v0, :cond_e

    if-eq v7, v4, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v6, :cond_b

    const-string p0, "NaN"

    goto :goto_3

    :cond_b
    const-string p0, "-Infinity"

    goto :goto_3

    :cond_c
    const-string p0, "Infinity"

    goto :goto_3

    :cond_d
    const-string p0, "-0.0"

    goto :goto_3

    :cond_e
    const-string p0, "0.0"

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Lb2/a;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_10
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static n(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/io/h;->d:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    if-ltz p0, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/fasterxml/jackson/core/io/h;->e:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
