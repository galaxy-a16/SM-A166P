.class public final Lcom/google/crypto/tink/shaded/protobuf/v;
.super Lcom/google/crypto/tink/shaded/protobuf/e;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/x;

.field public b:Lcom/google/crypto/tink/shaded/protobuf/g;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/RopeByteString;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/e;-><init>()V

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->a()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->iterator()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    return-void
.end method


# virtual methods
.method public final b()B
    .locals 3

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/g;->b()B

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->a:Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x;->a()Lcom/google/crypto/tink/shaded/protobuf/ByteString$LeafByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->iterator()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    :cond_1
    return v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
