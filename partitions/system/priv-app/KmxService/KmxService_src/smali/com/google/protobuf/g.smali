.class public abstract Lcom/google/protobuf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o9;


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/protobuf/t4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/t4;->a()Lcom/google/protobuf/t4;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/protobuf/r8;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/s8;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/protobuf/f;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/r8;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0
.end method

.method public parseFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i0;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i0;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/i0;->j(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/i0;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public parseFrom([B)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parseFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom([BII)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/g;->parseFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parseFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/g;->parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/g;->a(Lcom/google/protobuf/r8;)V

    return-object p0
.end method

.method public parseFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/g;->parseFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/i0;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parseFrom([B)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g;->parseFrom([BII)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom([BIILcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/g;->parseFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parseFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/i0;->z(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/protobuf/d;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/d;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/g;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i0;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    return-object p0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/protobuf/i0;->i(Ljava/io/InputStream;)Lcom/google/protobuf/i0;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/i0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public parsePartialFrom([B)Lcom/google/protobuf/r8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 6
    array-length v0, p1

    sget-object v1, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/protobuf/g;->parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom([BII)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/protobuf/g;->EMPTY_REGISTRY:Lcom/google/protobuf/t4;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/g;->parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/i0;->h([BIIZ)Lcom/google/protobuf/e0;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1, p4}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/r8;

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/e0;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public parsePartialFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/r8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/t4;",
            ")",
            "Lcom/google/protobuf/r8;"
        }
    .end annotation

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/protobuf/g;->parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parsePartialFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/i0;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parsePartialFrom(Lcom/google/protobuf/i0;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parsePartialFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g;->parsePartialFrom([B)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g;->parsePartialFrom([BII)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/g;->parsePartialFrom([BIILcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g;->parsePartialFrom([BLcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method
