.class public final Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/o9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o9;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private index_:I

.field private memoizedIsInitialized:B

.field private state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$1;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$1;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->memoizedIsInitialized:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/d6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d6;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/d6;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/d6;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;-><init>(Lcom/google/protobuf/d6;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    .line 2
    new-instance v0, Lcom/google/protobuf/lb;

    invoke-direct {v0}, Lcom/google/protobuf/lb;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->G()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->parser()Lcom/google/protobuf/o9;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v3

    check-cast v3, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    iput-object v3, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->H()I

    move-result v2

    iput v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_2
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;-><init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$500(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public static bridge synthetic d(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)V
    .locals 0

    iput p0, p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    return-void
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/o9;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->a()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/o9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hasState()Z

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hasState()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 0

    .line 3
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/o9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->PARSER:Lcom/google/protobuf/o9;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/n0;->s(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    return v0
.end method

.method public getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getStateOrBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$StateOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public hasState()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDescriptor()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {v0}, Lcom/google/protobuf/ob;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/f;->memoizedHashCode:I

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->b()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;-><init>(Lcom/google/protobuf/e6;I)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/q8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/n0;)V
    .locals 2

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->index_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n0;->P(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    return-void
.end method
