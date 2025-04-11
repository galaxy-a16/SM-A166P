.class public final Lcom/google/protobuf/d;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lcom/google/protobuf/d;->a:I

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget p0, p0, Lcom/google/protobuf/d;->a:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/d;->a:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/protobuf/d;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/d;->a:I

    :cond_1
    return v0
.end method

.method public final read([BII)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/protobuf/d;->a:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    iget p2, p0, Lcom/google/protobuf/d;->a:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/protobuf/d;->a:I

    :cond_1
    return p1
.end method

.method public final skip(J)J
    .locals 2

    iget v0, p0, Lcom/google/protobuf/d;->a:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    long-to-int p1, p1

    if-ltz p1, :cond_0

    iget p2, p0, Lcom/google/protobuf/d;->a:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/protobuf/d;->a:I

    :cond_0
    int-to-long p0, p1

    return-wide p0
.end method
