.class public final Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
.super Lcom/google/protobuf/d6;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$SealOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d6;",
        "Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$SealOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private blockNumber_:I

.field private signaturesBuilder_:Lcom/google/protobuf/v9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v9;"
        }
    .end annotation
.end field

.field private signatures_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;",
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

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/e6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/d6;-><init>(Lcom/google/protobuf/e6;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/e6;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;-><init>(Lcom/google/protobuf/e6;)V

    return-void
.end method

.method private ensureSignaturesIsMutable()V
    .locals 3

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/h3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->a()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method private getSignaturesFieldBuilder()Lcom/google/protobuf/v9;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v9;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/v9;

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSignatures(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;",
            ">;)",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/e;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->addRepeatedField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public addSignatures(ILcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSignatures(ILcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->e(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSignatures(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSignatures(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->f(Lcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public addSignaturesBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/v9;->d(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    return-object p0
.end method

.method public addSignaturesBuilder(I)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/v9;->c(ILcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    .locals 3

    .line 3
    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;-><init>(Lcom/google/protobuf/d6;I)V

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->blockNumber_:I

    invoke-static {v1, v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->f(ILcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/v9;->g()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->g(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->e(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/q8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clear()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/d6;->clear()Lcom/google/protobuf/d6;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->blockNumber_:I

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    return-object p0
.end method

.method public clearBlockNumber()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->blockNumber_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/n3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearField(Lcom/google/protobuf/n3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/s3;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->clearOneof(Lcom/google/protobuf/s3;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public clearSignatures()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->h()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/d6;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/e;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/q8;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 6
    invoke-super {p0}, Lcom/google/protobuf/d6;->clone()Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->clone()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getBlockNumber()I
    .locals 0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->blockNumber_:I

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    .locals 0

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/h3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->a()Lcom/google/protobuf/h3;

    move-result-object p0

    return-object p0
.end method

.method public getSignatures(I)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    return-object p0
.end method

.method public getSignaturesBuilder(I)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v9;->k(I)Lcom/google/protobuf/a;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    return-object p0
.end method

.method public getSignaturesBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/v9;->l()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0
.end method

.method public getSignaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/v9;->o()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0
.end method

.method public getSignaturesOrBuilder(I)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$SignatureOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$SignatureOrBuilder;

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->p(I)Lcom/google/protobuf/t8;

    move-result-object p0

    goto :goto_0
.end method

.method public getSignaturesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$SignatureOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->q()Lcom/google/protobuf/u9;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/q6;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto;->b()Lcom/google/protobuf/q6;

    move-result-object p0

    const-class v0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    const-class v1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/e;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/m8;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/n8;)Lcom/google/protobuf/m8;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/q8;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 2

    .line 7
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->h()Lcom/google/protobuf/o9;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/o9;->parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

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

    check-cast p2, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
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

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/n8;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    instance-of v0, p1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/t8;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/n8;Ljava/util/Map;)Lcom/google/protobuf/a;

    return-object p0
.end method

.method public mergeFrom(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getBlockNumber()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getBlockNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    invoke-virtual {v0}, Lcom/google/protobuf/v9;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/protobuf/v9;->a:Lcom/google/protobuf/b;

    .line 10
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->bitField0_:I

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->getSignaturesFieldBuilder()Lcom/google/protobuf/v9;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->d(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/v9;->b(Ljava/lang/Iterable;)V

    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->access$200(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/google/protobuf/ob;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->mergeUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public removeSignatures(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/v9;->u(I)V

    :goto_0
    return-object p0
.end method

.method public setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->blockNumber_:I

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/d6;->setField(Lcom/google/protobuf/n3;Ljava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/d6;->setRepeatedField(Lcom/google/protobuf/n3;ILjava/lang/Object;)Lcom/google/protobuf/d6;

    return-object p0
.end method

.method public setSignatures(ILcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/d6;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v9;->v(ILcom/google/protobuf/c;)V

    :goto_0
    return-object p0
.end method

.method public setSignatures(ILcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signaturesBuilder_:Lcom/google/protobuf/v9;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->ensureSignaturesIsMutable()V

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->signatures_:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/ob;)Lcom/google/protobuf/m8;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;->setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/ob;)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/d6;->setUnknownFieldsProto3(Lcom/google/protobuf/ob;)Lcom/google/protobuf/d6;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal$Builder;

    return-object p0
.end method
