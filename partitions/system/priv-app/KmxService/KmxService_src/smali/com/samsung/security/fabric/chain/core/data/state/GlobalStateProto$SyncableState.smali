.class public final Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_STAMP_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

.field public static final INDEXED_STATE_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/o9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o9;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private blockStamp_:I

.field private indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

.field private memoizedIsInitialized:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$1;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$1;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->memoizedIsInitialized:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

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

    iput-byte p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/d6;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;-><init>(Lcom/google/protobuf/d6;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;-><init>()V

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

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownFieldProto3(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->H()I

    move-result v2

    iput v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->parser()Lcom/google/protobuf/o9;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/i0;->w(Lcom/google/protobuf/o9;Lcom/google/protobuf/t4;)Lcom/google/protobuf/r8;

    move-result-object v3

    check-cast v3, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    iput-object v3, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
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
    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;-><init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$700(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public static bridge synthetic d(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)V
    .locals 0

    iput p0, p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    return-void
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/o9;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->e()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 2
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/o9;Ljava/io/InputStream;Lcom/google/protobuf/t4;)Lcom/google/protobuf/n8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0}, Lcom/google/protobuf/o9;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/o9;->parseFrom([BLcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

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

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->hasIndexedState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->hasIndexedState()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->hasIndexedState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getBlockStamp()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getBlockStamp()I

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

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

.method public getBlockStamp()I
    .locals 0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 0

    .line 3
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getIndexedStateOrBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedStateOrBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/o9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o9;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->PARSER:Lcom/google/protobuf/o9;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/c;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/n0;->o(ILcom/google/protobuf/r8;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/protobuf/n0;->s(II)I

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

.method public final getUnknownFields()Lcom/google/protobuf/ob;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    return-object p0
.end method

.method public hasIndexedState()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

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
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getDescriptor()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->hasIndexedState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/n;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getBlockStamp()I

    move-result v1

    add-int/2addr v1, v0

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

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->f()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/e6;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/q8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 0

    .line 4
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/e6;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 1

    .line 5
    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;-><init>(Lcom/google/protobuf/e6;I)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/m8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/q8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->DEFAULT_INSTANCE:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/n0;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->indexedState_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getIndexedState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n0;->I(ILcom/google/protobuf/r8;)V

    :cond_0
    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->blockStamp_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n0;->P(II)V

    :cond_1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/ob;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ob;->writeTo(Lcom/google/protobuf/n0;)V

    return-void
.end method
