.class public Lcom/android/server/remoteappmode/ProximityManager;
.super Ljava/lang/Object;
.source "ProximityManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProximityManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPackageName:Ljava/lang/String;

.field public proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

.field public sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static bridge synthetic -$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/remoteappmode/ProximityManager;->sendIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterReceiverWhenActivationTimeEnds(Lcom/android/server/remoteappmode/ProximityManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->unregisterReceiverWhenActivationTimeEnds()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/remoteappmode/ProximityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/server/remoteappmode/ProximityManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    return-void
.end method


# virtual methods
.method public declared-synchronized disableSendingUserPresentIntent()V
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/server/remoteappmode/ProximityManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterProximityReceiver()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/remoteappmode/ProximityManager;->setProximityEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->unregister()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableSendingUserPresentIntent(Ljava/lang/String;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/android/server/remoteappmode/ProximityManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerProximityReceiver()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/ProximityManager;->setTargetPackageName(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/ProximityManager;->setProximityEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->registerBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public final ensureInitSharedPreference()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "remote_app_mode_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public getExpiredTime()J
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 115
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "ltw_proximity_expired_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getProximityEnabled()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 143
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "ltw_proximity_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getTargetPackageName()Ljava/lang/String;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 129
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "target_package_name"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSendingUserPresentEnabled()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValid()Z
    .locals 7

    .line 59
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getProximityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 68
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public register()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->registerBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized registerBroadcastReceiver()V
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;-><init>(Lcom/android/server/remoteappmode/ProximityManager;Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    .line 87
    invoke-virtual {v0}, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->register()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    .line 197
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 202
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setExpiredTime(J)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 121
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ltw_proximity_expired_time"

    .line 122
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setProximityEnabled(Z)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 149
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ltw_proximity_enabled"

    .line 150
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setTargetPackageName(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    .line 135
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "target_package_name"

    .line 136
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final unregisterReceiverWhenActivationTimeEnds()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->disableSendingUserPresentIntent()V

    :cond_0
    return-void
.end method
