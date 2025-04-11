.class public final Lcom/android/server/DockObserver$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "DockObserver.java"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 627
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public isDeviceProvisioned()Z
    .locals 2

    .line 662
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 632
    iget-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    .line 634
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 636
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$mupdateIfDockedLocked(Lcom/android/server/DockObserver;)V

    .line 638
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 0

    .line 642
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    return-void
.end method

.method public final updateRegistration()V
    .locals 4

    .line 646
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 647
    iget-boolean v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "device_provisioned"

    .line 653
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 652
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 658
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    return-void
.end method
