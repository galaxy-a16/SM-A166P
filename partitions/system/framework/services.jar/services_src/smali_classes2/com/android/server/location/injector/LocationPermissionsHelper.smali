.class public abstract Lcom/android/server/location/injector/LocationPermissionsHelper;
.super Ljava/lang/Object;
.source "LocationPermissionsHelper.java"


# instance fields
.field public final mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mFreezedUids:Ljava/util/HashSet;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public final mPauseReasonByCaller:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$6_hehGw_9gNX9Jl1C_T_qxheeus(Lcom/android/server/location/injector/LocationPermissionsHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->onAppOpsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/AppOpsHelper;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    iput-object p1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

    .line 70
    new-instance v0, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/LocationPermissionsHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/AppOpsHelper;->addListener(Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getReasonByCaller(I)Landroid/location/LocationConstants$PAUSED_BY;
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationConstants$PAUSED_BY;

    return-object p0
.end method

.method public final hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->asPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 132
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return p1
.end method

.method public abstract hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
.end method

.method public final notifyLocationPermissionsChanged(I)V
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 81
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 75
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAppOpsChanged(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper;->sendOpChanged(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->notifyLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFreezeStateChanged(ZI)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper;->sendFreezeStateChanged(ZI)V

    .line 156
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->notifyLocationPermissionsChanged(I)V

    return-void
.end method

.method public final removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    return-void
.end method
