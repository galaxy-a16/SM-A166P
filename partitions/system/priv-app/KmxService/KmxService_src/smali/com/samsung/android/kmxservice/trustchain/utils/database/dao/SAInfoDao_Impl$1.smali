.class Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$1;
.super Landroidx/room/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
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
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;)V
    .locals 1

    .line 1
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->member_id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->fabric_id:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_guid:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_mcc:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;->sa_region_mcc:Ljava/lang/String;

    const/4 p2, 0x5

    if-nez p0, :cond_4

    invoke-interface {p1, p2}, La1/g;->A(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, p2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic bind(La1/i;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$1;->bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `sa_info` (`member_id`,`fabric_id`,`sa_guid`,`sa_mcc`,`sa_region_mcc`) VALUES (?,?,?,?,?)"

    return-object p0
.end method
