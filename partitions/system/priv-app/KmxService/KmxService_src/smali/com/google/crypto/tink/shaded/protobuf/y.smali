.class public final Lcom/google/crypto/tink/shaded/protobuf/y;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/crypto/tink/shaded/protobuf/x;

.field public b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)V
    .locals 1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->g:Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->a()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->a()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    :goto_0
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->c:I

    :cond_1
    return-void
.end method

.method public final available()I
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->g:Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final b(II[B)I
    .locals 4

    move v0, p2

    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/y;->a()V

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->c:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    invoke-virtual {v2, p3, v3, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyTo([BIII)V

    add-int/2addr p1, v1

    :cond_1
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr p2, v0

    return p2
.end method

.method public final mark(I)V
    .locals 1

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->f:I

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final read()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/y;->a()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->byteAt(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/y;->b(II[B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->g:Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->a()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->b:Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->d:I

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->e:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/y;->f:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/y;->b(II[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/y;->b(II[B)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
