.class public Lcom/android/server/location/injector/SystemAppForegroundHelper;
.super Lcom/android/server/location/injector/AppForegroundHelper;
.source "SystemAppForegroundHelper.java"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;


# direct methods
.method public static synthetic $r8$lambda$5uB0h0rLYhVesF_M48mOHETYIBQ(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->lambda$onAppForegroundChanged$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$c-rs0AJaF6_hADO_-snEOexhL_k(Lcom/android/server/location/injector/SystemAppForegroundHelper;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onAppForegroundChanged(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/server/location/injector/AppForegroundHelper;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onAppForegroundChanged$0(IZ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper;->updateUidForegroundChanged(IZ)V

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/AppForegroundHelper;->notifyAppForeground(IZ)V

    return-void
.end method


# virtual methods
.method public isAppForeground(I)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/injector/AppForegroundHelper;->isForeground(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final onAppForegroundChanged(II)V
    .locals 2

    .line 60
    invoke-static {p2}, Lcom/android/server/location/injector/AppForegroundHelper;->isForeground(I)Z

    move-result p2

    .line 61
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 54
    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V

    const/16 p0, 0x7d

    invoke-virtual {v0, v1, p0}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    return-void
.end method

.method public setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    return-void
.end method
