.class Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$1;
.super Landroidx/room/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
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
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
    .locals 1

    .line 1
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_id:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_noti_server:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->member_reg_info:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->trust_level:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->cert_chain:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->device_type:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_5
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->model_code:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_6
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->stDeviceId:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_7
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->saDeviceId:Ljava/lang/String;

    const/16 v0, 0x9

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_8
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->securityStatus:Ljava/lang/String;

    const/16 v0, 0xa

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, La1/g;->A(I)V

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_9
    iget-object p0, p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;->isPeer:Ljava/lang/String;

    const/16 p2, 0xb

    if-nez p0, :cond_a

    invoke-interface {p1, p2}, La1/g;->A(I)V

    goto :goto_a

    :cond_a
    invoke-interface {p1, p2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_a
    return-void
.end method

.method public bridge synthetic bind(La1/i;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$1;->bind(La1/i;Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `membership_member_info` (`member_id`,`member_noti_server`,`member_reg_info`,`trust_level`,`cert_chain`,`device_type`,`model_code`,`stDeviceId`,`saDeviceId`,`securityStatus`,`isPeer`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
