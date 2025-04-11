.class public abstract Lcom/google/crypto/tink/shaded/protobuf/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/m;->a:I

    return-void
.end method

.method public static a([BIIZ)Lcom/google/crypto/tink/shaded/protobuf/j;
    .locals 1

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;-><init>([BIIZ)V

    if-ltz p2, :cond_2

    :try_start_0
    iget p0, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->e:I

    sub-int/2addr p0, p1

    add-int/2addr p0, p2

    iget p2, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->f:I

    if-gt p0, p2, :cond_1

    iput p0, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->f:I

    iget p2, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget p3, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    add-int/2addr p2, p3

    iput p2, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    sub-int p1, p2, p1

    if-le p1, p0, :cond_0

    sub-int/2addr p1, p0

    iput p1, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr p2, p1

    iput p2, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, v0, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method
