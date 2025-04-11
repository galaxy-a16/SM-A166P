.class public final Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;,
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponseOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$Node;,
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$NodeOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;,
        Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_Node_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Node_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_QueryRequest_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_QueryRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_QueryResponse_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_QueryResponse_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u000bquery.proto\u001a\u000bblock.proto\u001a\nseal.proto\u001a\u0012global_state.proto\"\u001b\n\u000cQueryRequest\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\"3\n\u0004Node\u0012\r\n\u0005level\u0018\u0001 \u0001(\r\u0012\r\n\u0005index\u0018\u0002 \u0001(\r\u0012\r\n\u0005value\u0018\u0003 \u0001(\u000c\"\u00c3\u0001\n\rQueryResponse\u0012\r\n\u0005valid\u0018\u0001 \u0001(\u0008\u0012\u000e\n\u0006height\u0018\u0002 \u0001(\r\u0012%\n\u000eindexed_states\u0018\u0003 \u0003(\u000b2\r.IndexedState\u0012!\n\u0012intermediate_nodes\u0018\u0004 \u0003(\u000b2\u0005.Node\u0012\u001a\n\nlast_block\u0018\u0005 \u0001(\u000b2\u0006.Block\u0012\u0013\n\u0004seal\u0018\u0006 \u0001(\u000b2\u0005.Seal\u0012\u0018\n\u0010response_message\u0018\u0007 \u0001(\tBE\n7com.samsung.security.fabric.chain.core.data.event.queryB\nQueryProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$1;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryRequest_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Key"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_Node_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Index"

    const-string v3, "Value"

    const-string v4, "Level"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_Node_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryResponse_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Valid"

    const-string v3, "Height"

    const-string v4, "IndexedStates"

    const-string v5, "IntermediateNodes"

    const-string v6, "LastBlock"

    const-string v7, "Seal"

    const-string v8, "ResponseMessage"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

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

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_Node_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_Node_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryRequest_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryRequest_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryResponse_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->internal_static_QueryResponse_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic g(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
