.class Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;
.super Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    return-void
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final asReadOnlyByteBufferList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public byteAt(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public copyToInternal([BIII)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/google/crypto/tink/shaded/protobuf/ByteString;II)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equalsRange(Lcom/google/crypto/tink/shaded/protobuf/ByteString;II)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p0, v3, :cond_1

    aget-byte p2, v0, p0

    aget-byte p3, v1, p1

    if-eq p2, p3, :cond_0

    return v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->substring(II)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ran off end of other: "

    const-string v1, ", "

    invoke-static {v0, p2, v1, p3, v1}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOffsetIntoBytes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public internalByteAt(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final isValidUtf8()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    add-int/2addr p0, v0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/e0;->q(III[B)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/m;
    .locals 3

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->a([BIIZ)Lcom/google/crypto/tink/shaded/protobuf/j;

    move-result-object p0

    return-object p0
.end method

.method public final newInput()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final partialHash(III)I
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/s;->a:Ljava/nio/charset/Charset;

    move p2, p0

    :goto_0
    add-int v1, p0, p3

    if-ge p2, v1, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v1, v0, p2

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final partialIsValidUtf8(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/f0;->a:Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-virtual {p2, p1, v0, p3, p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->q(III[B)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public final substring(II)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->checkRange(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$BoundedByteString;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method

.method public final toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final writeTo(Lcom/google/crypto/tink/shaded/protobuf/c;)V
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->size()I

    move-result p0

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    iget-object v2, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->a:[B

    iget v3, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->c:I

    invoke-static {v0, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->c:I

    add-int/2addr v0, p0

    iput v0, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget p1, p1, Lcom/google/crypto/tink/shaded/protobuf/n;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p1

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final writeToInternal(Ljava/io/OutputStream;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
