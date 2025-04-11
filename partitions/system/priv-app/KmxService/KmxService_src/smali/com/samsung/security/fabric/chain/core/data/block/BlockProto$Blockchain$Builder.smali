.class public final Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockchainOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d6;",
        "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockchainOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private blocksBuilder_:Lcom/google/protobuf/v9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v9;"
        }
    .end annotation
.end field

.field private blocks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/e6;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method private ensureBlocksIsMutable()V
    .locals 3

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getBlocksFieldBuilder()Lcom/google/protobuf/v9;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v9;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/v9;-><init>(Ljava/util/List;ZLcom/google/protobuf/e6;Z)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->c()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBlocks(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;",
            ">;)",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/e;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public addBlocks(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addBlocks(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addBlocks(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addBlocks(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addBlocksBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v9;->d(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    return-object p0
.end method

.method public addBlocksBuilder(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/v9;->c(ILcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
    .locals 3

    .line 3
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;-><init>(Lcom/google/protobuf/d6;I)V

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->e(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/q8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/d6;->clear()Lcom/google/protobuf/d6;

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    return-object p0
.end method

.method public clearBlocks()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/d6;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/q8;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBlocks(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0
.end method

.method public getBlocksBuilder(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v9;->k(I)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    return-object p0
.end method

.method public getBlocksBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->l()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getBlocksCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0
.end method

.method public getBlocksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->o()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getBlocksOrBuilder(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->p(I)Lcom/google/protobuf/t8;

    move-result-object p0

    goto :goto_0
.end method

.method public getBlocksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->q()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
    .locals 0

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->c()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->d()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 2

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->f()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

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

    check-cast p2, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;
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

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    instance-of v0, p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    .line 10
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->getBlocksFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->access$500(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public removeBlocks(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->u(I)V

    :goto_0
    return-object p0
.end method

.method public setBlocks(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->v(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setBlocks(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocksBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->ensureBlocksIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->blocks_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->v(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/d6;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    return-object p0
.end method
