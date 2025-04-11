.class public final Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;,
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableStateOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;,
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedStateOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;,
        Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$StateOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_IndexedState_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_IndexedState_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_State_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_State_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_SyncableState_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_SyncableState_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "\n\u0012global_state.proto\"#\n\u0005State\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"4\n\u000cIndexedState\u0012\r\n\u0005index\u0018\u0001 \u0001(\r\u0012\u0015\n\u0005state\u0018\u0002 \u0001(\u000b2\u0006.State\"J\n\rSyncableState\u0012$\n\rindexed_state\u0018\u0001 \u0001(\u000b2\r.IndexedState\u0012\u0013\n\u000bblock_stamp\u0018\u0002 \u0001(\rBE\n1com.samsung.security.fabric.chain.core.data.stateB\u0010GlobalStateProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_State_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_State_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_IndexedState_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Index"

    const-string v3, "State"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_IndexedState_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_SyncableState_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "IndexedState"

    const-string v3, "BlockStamp"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_SyncableState_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_IndexedState_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_IndexedState_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_State_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_State_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_SyncableState_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic f()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->internal_static_SyncableState_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic g(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
