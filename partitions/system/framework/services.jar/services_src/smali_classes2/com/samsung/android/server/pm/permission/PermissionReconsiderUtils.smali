.class public Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;
.super Ljava/lang/Object;
.source "PermissionReconsiderUtils.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mRollbackId:I

.field public mUpdateTimeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    const-string v1, ""

    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mUpdateTimeStr:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "perm_apex_rollback_id"

    const-wide/16 v3, -0x1

    .line 32
    invoke-static {p1, v2, v3, v4}, Lcom/samsung/android/server/pm/PmSharedPreferences;->getLong(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    if-le v2, v0, :cond_0

    const-string/jumbo v0, "perm_apex_update_time"

    .line 35
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mUpdateTimeStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static saveRollbackIdWhenPermRollback(Landroid/content/Context;Landroid/content/rollback/RollbackInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 103
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.permission"

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.google.android.permissioncontroller"

    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    const-string/jumbo v1, "perm_apex_rollback_id"

    int-to-long v2, p1

    .line 107
    invoke-static {p0, v1, v2, v3, v0}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rolling back permission module, rollback id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public static saveRollbackUpdateTime(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 4

    .line 121
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "perm_apex_update_time"

    const/4 v1, 0x1

    .line 129
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rollback update time: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearRollbackHistory()V
    .locals 4

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "perm_apex_rollback_id"

    invoke-static {p0, v3, v0, v1, v2}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putLong(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-void
.end method

.method public getRollbackUpdateTime()J
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->getUpdateTimes()Ljava/util/Map;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget p0, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getUpdateTimes()Ljava/util/Map;
    .locals 8

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mUpdateTimeStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mUpdateTimeStr:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 82
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    const-string v5, ":"

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 87
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 88
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 89
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public runWhenRollbackPermission(Ljava/util/function/Consumer;)Z
    .locals 5

    .line 47
    iget v0, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->getRollbackUpdateTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    return v2

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconsidering permissions due to rollback. apex update time: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setRollbackIdAndUpdateTime(ILjava/lang/String;)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mRollbackId:I

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/pm/permission/PermissionReconsiderUtils;->mUpdateTimeStr:Ljava/lang/String;

    return-void
.end method
