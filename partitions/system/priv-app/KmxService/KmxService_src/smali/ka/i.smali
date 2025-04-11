.class public final Lka/i;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lcom/samsung/security/fabric/chain/core/manager/sync/d;


# direct methods
.method public constructor <init>(Lcom/samsung/security/fabric/chain/core/manager/sync/d;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/i;->c:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1004

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;

    const-string p1, "SYNC_REQ_HANDLER"

    const-string v0, "Received sync request."

    invoke-static {p1, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lka/i;->c:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->d()V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncResponse;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;

    move-result-object p0

    return-object p0
.end method
