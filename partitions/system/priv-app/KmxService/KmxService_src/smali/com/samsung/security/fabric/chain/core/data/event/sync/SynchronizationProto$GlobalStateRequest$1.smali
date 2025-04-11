.class Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest$1;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/g;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;-><init>(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;I)V

    return-object p0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest$1;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;

    move-result-object p0

    return-object p0
.end method
