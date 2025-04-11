.class Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$1;
.super Landroidx/room/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/g;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;)V
    .locals 2

    .line 1
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->block_capacity:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->transaction_capacity:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fragment_size:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->fabric_pub_key:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->syncPeriod:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->validPeriod:I

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    iget p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->ftolerance:I

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->updated_at:J

    invoke-interface {p1, p0, v0, v1}, La1/g;->W(IJ)V

    return-void
.end method

.method public bridge synthetic bind(La1/i;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$1;->bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `membership_fabric_info` (`fabric_id`,`block_capacity`,`transaction_capacity`,`fragment_size`,`fabric_pub_key`,`syncPeriod`,`validPeriod`,`ftolerance`,`updated_at`) VALUES (?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
