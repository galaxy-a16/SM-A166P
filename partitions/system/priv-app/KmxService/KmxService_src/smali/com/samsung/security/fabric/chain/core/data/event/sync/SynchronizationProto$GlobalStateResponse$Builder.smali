.class public final Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d6;",
        "Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private emptyIndex_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private responseMessage_:Ljava/lang/Object;

.field private syncableStatesBuilder_:Lcom/google/protobuf/v9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v9;"
        }
    .end annotation
.end field

.field private syncableStates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;",
            ">;"
        }
    .end annotation
.end field

.field private valid_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/e6;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method private ensureEmptyIndexIsMutable()V
    .locals 3

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSyncableStatesIsMutable()V
    .locals 3

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->g()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method private getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v9;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEmptyIndex(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureEmptyIndexIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/e;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public addAllSyncableStates(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;",
            ">;)",
            "Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/e;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public addEmptyIndex(I)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureEmptyIndexIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public addSyncableStates(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSyncableStates(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSyncableStates(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSyncableStates(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSyncableStatesBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v9;->d(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    return-object p0
.end method

.method public addSyncableStatesBuilder(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/v9;->c(ILcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
    .locals 3

    .line 3
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;-><init>(Lcom/google/protobuf/d6;I)V

    iget-boolean v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->valid_:Z

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->k(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;Z)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->j(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;Ljava/util/List;)V

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->h(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->i(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->g(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/q8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/d6;->clear()Lcom/google/protobuf/d6;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->valid_:Z

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearEmptyIndex()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public clearResponseMessage()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public clearSyncableStates()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    return-object p0
.end method

.method public clearValid()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->valid_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/d6;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/q8;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
    .locals 0

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->g()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEmptyIndexCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getEmptyIndexList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSyncableStates(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    return-object p0
.end method

.method public getSyncableStatesBuilder(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v9;->k(I)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;

    return-object p0
.end method

.method public getSyncableStatesBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->l()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getSyncableStatesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0
.end method

.method public getSyncableStatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->o()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getSyncableStatesOrBuilder(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableStateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableStateOrBuilder;

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->p(I)Lcom/google/protobuf/t8;

    move-result-object p0

    goto :goto_0
.end method

.method public getSyncableStatesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableStateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->q()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->valid_:Z

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->h()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 2

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->l()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/r8;

    move-result-object p2

    check-cast p2, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    instance-of v0, p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getValid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    .line 10
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->getSyncableStatesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->d(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->d(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->bitField0_:I

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureEmptyIndexIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->d(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->e(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_9
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->access$1400(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;)Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public removeSyncableStates(I)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->u(I)V

    :goto_0
    return-object p0
.end method

.method public setEmptyIndex(II)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureEmptyIndexIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->emptyIndex_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/d6;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public setResponseMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->access$1500(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public setSyncableStates(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->v(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setSyncableStates(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$SyncableState;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStatesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->ensureSyncableStatesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->syncableStates_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->v(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    return-object p0
.end method

.method public setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->valid_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method
