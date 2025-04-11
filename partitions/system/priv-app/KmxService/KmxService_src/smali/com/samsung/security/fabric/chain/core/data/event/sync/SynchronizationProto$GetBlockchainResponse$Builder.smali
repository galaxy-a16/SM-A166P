.class public final Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d6;",
        "Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private blockchainBuilder_:Lcom/google/protobuf/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ba;"
        }
    .end annotation
.end field

.field private blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

.field private responseMessage_:Ljava/lang/Object;

.field private sealBuilder_:Lcom/google/protobuf/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ba;"
        }
    .end annotation
.end field

.field private seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

.field private valid_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/e6;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method private getBlockchainFieldBuilder()Lcom/google/protobuf/ba;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/ba;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->c()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method private getSealFieldBuilder()Lcom/google/protobuf/ba;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/ba;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->access$700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
    .locals 2

    .line 3
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;-><init>(Lcom/google/protobuf/d6;I)V

    iget-boolean v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->valid_:Z

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->h(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Z)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->e(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->g(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->f(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/q8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/d6;->clear()Lcom/google/protobuf/d6;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->valid_:Z

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    :goto_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearBlockchain()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public clearResponseMessage()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public clearSeal()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    :goto_0
    return-object p0
.end method

.method public clearValid()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->valid_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/d6;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/q8;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    return-object p0
.end method

.method public getBlockchainBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getBlockchainFieldBuilder()Lcom/google/protobuf/ba;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    return-object p0
.end method

.method public getBlockchainOrBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockchainOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->e()Lcom/google/protobuf/t8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockchainOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
    .locals 0

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->c()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    return-object p0
.end method

.method public getSealBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->getSealFieldBuilder()Lcom/google/protobuf/ba;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    return-object p0
.end method

.method public getSealOrBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$SealOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->e()Lcom/google/protobuf/t8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$SealOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->valid_:Z

    return p0
.end method

.method public hasBlockchain()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasSeal()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto;->d()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/q6;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mergeBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->newBuilder(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 2

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->i()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

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

    check-cast p2, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;
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

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    instance-of v0, p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    .line 9
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getValid()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->hasBlockchain()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->hasSeal()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->d(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    :cond_4
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->access$800(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;)Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public mergeSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->newBuilder(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchainBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->blockchain_:Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/d6;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public setResponseMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->access$900(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->responseMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public setSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->sealBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->seal_:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    return-object p0
.end method

.method public setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->valid_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method
