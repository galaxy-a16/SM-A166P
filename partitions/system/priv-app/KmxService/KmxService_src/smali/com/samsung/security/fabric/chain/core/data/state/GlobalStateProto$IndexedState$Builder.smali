.class public final Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d6;",
        "Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedStateOrBuilder;"
    }
.end annotation


# instance fields
.field private index_:I

.field private stateBuilder_:Lcom/google/protobuf/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ba;"
        }
    .end annotation
.end field

.field private state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    .line 2
    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/e6;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->a()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method private getStateFieldBuilder()Lcom/google/protobuf/ba;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/ba;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/ba;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->getParentForChildren()Lcom/google/protobuf/e6;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/ba;-><init>(Lcom/google/protobuf/c;Lcom/google/protobuf/b;Z)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->access$400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 2

    .line 3
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;-><init>(Lcom/google/protobuf/d6;I)V

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->index_:I

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->d(ILcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/ba;->b()Lcom/google/protobuf/c;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->e(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/q8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/d6;->clear()Lcom/google/protobuf/d6;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->index_:I

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public clearIndex()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->index_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public clearState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/d6;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/q8;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    .locals 0

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->a()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->index_:I

    return p0
.end method

.method public getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/ba;->d()Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    return-object p0
.end method

.method public getStateBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->getStateFieldBuilder()Lcom/google/protobuf/ba;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ba;->c()Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    return-object p0
.end method

.method public getStateOrBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$StateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/ba;->e()Lcom/google/protobuf/t8;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$StateOrBuilder;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

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

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto;->b()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 2

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->f()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

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

    check-cast p2, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;
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

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    instance-of v0, p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 9
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setIndex(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->getState()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    :cond_2
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;->access$500(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState;)Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public mergeState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

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
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setIndex(I)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->index_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/d6;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/ba;->h(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setState(Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->stateBuilder_:Lcom/google/protobuf/ba;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->state_:Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

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
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$IndexedState$Builder;

    return-object p0
.end method
