.class public final Lf6/e;
.super Lf6/f;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public final e:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0, p1}, Lf6/f;-><init>([B)V

    iput p2, p0, Lf6/e;->c:I

    iput p3, p0, Lf6/e;->d:I

    iput p4, p0, Lf6/e;->e:I

    return-void
.end method

.method public static h(Lf6/c;)Lf6/e;
    .locals 4

    invoke-virtual {p0}, Lf6/j;->g()[B

    move-result-object v0

    invoke-virtual {p0}, Lf6/c;->h()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-instance v3, Lf6/e;

    iget p0, p0, Lf6/c;->e:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length p0, v0

    if-eqz v2, :cond_1

    add-int/lit8 p0, p0, -0x2

    :cond_1
    invoke-direct {v3, v0, v1, v1, p0}, Lf6/e;-><init>([BIII)V

    return-object v3
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lf6/e;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lf6/e;->c:I

    return p0
.end method

.method public final e()Lf6/f;
    .locals 4

    invoke-virtual {p0}, Lf6/e;->f()Z

    move-result v0

    iget-object v1, p0, Lu7/a;->a:[B

    if-nez v0, :cond_0

    iget v0, p0, Lf6/e;->c:I

    iget p0, p0, Lf6/e;->d:I

    invoke-static {v0, p0, v1}, Lf6/f;->d(II[B)Lf6/f;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lf6/e;->c:I

    iget v2, p0, Lf6/e;->d:I

    iget v3, p0, Lf6/e;->e:I

    iput v3, p0, Lf6/e;->d:I

    iput v3, p0, Lf6/e;->c:I

    new-instance p0, Lf6/g;

    invoke-static {v1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lf6/g;-><init>([BI)V

    return-object p0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lf6/e;->d:I

    iget p0, p0, Lf6/e;->e:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Lf6/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lf6/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf6/e;->c:I

    :goto_0
    iget-object v1, p0, Lu7/a;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v1, v1, v0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    iput v0, p0, Lf6/e;->d:I

    return-void

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
