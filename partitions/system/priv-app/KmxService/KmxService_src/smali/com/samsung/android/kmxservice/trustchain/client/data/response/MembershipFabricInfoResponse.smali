.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blockCapacity:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "blockCapacity"
    .end annotation
.end field

.field private fabricID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricID"
    .end annotation
.end field

.field private fabricPubKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricPubKey"
    .end annotation
.end field

.field private fragmentSize:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fragmentSize"
    .end annotation
.end field

.field private ftolerance:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "ftolerance"
    .end annotation
.end field

.field private memberInfoList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private syncPeriod:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "syncPeriod"
    .end annotation
.end field

.field private transactionCapacity:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "transactionCapacity"
    .end annotation
.end field

.field private validPeriod:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "validPeriod"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricID:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->block_capacity:I

    iput v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->blockCapacity:I

    iget v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->transaction_capacity:I

    iput v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->transactionCapacity:I

    iget v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fragment_size:I

    iput v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fragmentSize:I

    iget-object v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_pub_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricPubKey:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->syncPeriod:I

    iput v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->syncPeriod:I

    iget v0, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->validPeriod:I

    iput v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->validPeriod:I

    iget p1, p1, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->ftolerance:I

    iput p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->ftolerance:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;",
            ">;III)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricID:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->blockCapacity:I

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->transactionCapacity:I

    iput p4, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fragmentSize:I

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricPubKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    iput p7, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->syncPeriod:I

    iput p8, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->validPeriod:I

    iput p9, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->ftolerance:I

    return-void
.end method


# virtual methods
.method public getBlockCapacity()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "blockCapacity"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->blockCapacity:I

    return p0
.end method

.method public getFabricID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricID"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricID:Ljava/lang/String;

    return-object p0
.end method

.method public getFabricPubKey()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fabricPubKey"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricPubKey:Ljava/lang/String;

    return-object p0
.end method

.method public getFragmentSize()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "fragmentSize"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fragmentSize:I

    return p0
.end method

.method public getFtolerance()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "ftolerance"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->ftolerance:I

    return p0
.end method

.method public getMemberInfoList()Ljava/util/List;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "memberInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getNumOperablePeers()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isOperablePeer()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getOperablePeers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->isOperablePeer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSyncPeriod()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "syncPeriod"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->syncPeriod:I

    return p0
.end method

.method public getTransactionCapacity()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "transactionCapacity"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->transactionCapacity:I

    return p0
.end method

.method public getValidPeriod()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "validPeriod"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->validPeriod:I

    return p0
.end method

.method public getWakeupThreshold()J
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getNumOperablePeers()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExist()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->memberInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{fabricID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",blockCapacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->blockCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",transactionCapacity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->transactionCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fragmentSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fragmentSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fabricPubKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->fabricPubKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",syncPeriod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->syncPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",validPeriod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->validPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ftolerance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->ftolerance:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",memberInfoList : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
