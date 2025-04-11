.class public final Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequestOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequestOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_GetBlockchainRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_GetBlockchainRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_GetBlockchainResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_GetBlockchainResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_GlobalStateRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_GlobalStateRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_GlobalStateResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_GlobalStateResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_SyncRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_SyncRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_SyncResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_SyncResponse_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "\n\u0015synchronization.proto\u001a\u000bblock.proto\u001a\nseal.proto\u001a\u0012global_state.proto\"\r\n\u000bSyncRequest\"7\n\u000cSyncResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u0018\n\u0010response_message\u0018\u0002 \u0001(\t\"J\n\u0014GetBlockchainRequest\u0012\u0019\n\u0011from_block_number\u0018\u0001 \u0001(\r\u0012\u0017\n\u000fto_block_number\u0018\u0002 \u0001(\r\"v\n\u0015GetBlockchainResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u001f\n\nblockchain\u0018\u0002 \u0001(\u000b2\u000b.Blockchain\u0012\u0013\n\u0004seal\u0018\u0003 \u0001(\u000b2\u0005.Seal\u0012\u0018\n\u0010response_message\u0018\u0004 \u0001(\t\"\u0014\n\u0012GlobalStateRequest\"|\n\u0013GlobalStateResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\'\n\u000fsyncable_states\u0018\u0002 \u0003(\u000b2\u000e.SyncableState\u0012\u0013\n\u000bempty_index\u0018\u0003 \u0003(\r\u0012\u0018\n\u0010response_message\u0018\u0004 \u0001(\tBN\n6com.samsung.security.fabric.chain.core.data.event.syncB\u0014SynchronizationProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$1;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    new-array v3, v5, [Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v3, "Valid"

    const-string v4, "ResponseMessage"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v6, "FromBlockNumber"

    const-string v7, "ToBlockNumber"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Blockchain"

    const-string v6, "Seal"

    filled-new-array {v3, v2, v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    new-array v2, v5, [Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "SyncableStates"

    const-string v5, "EmptyIndex"

    filled-new-array {v3, v2, v5, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->getDescriptor()Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GetBlockchainResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic g()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static bridge synthetic h()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_GlobalStateResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic i()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic j()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic k()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic l()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->internal_static_SyncResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic m(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
