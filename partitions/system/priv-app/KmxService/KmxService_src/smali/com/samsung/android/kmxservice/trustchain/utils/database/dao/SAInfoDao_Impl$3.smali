.class Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$3;
.super Landroidx/room/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$3;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/f0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE sa_info SET sa_guid = ?, sa_mcc = ?, sa_region_mcc = ? WHERE member_id = ?"

    return-object p0
.end method
