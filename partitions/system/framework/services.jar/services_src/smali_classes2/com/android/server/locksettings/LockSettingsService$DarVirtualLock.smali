.class public final Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 5372
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public final isInnerAuthUserForDualDarDo(I)Z
    .locals 1

    .line 5584
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object p0

    .line 5585
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCredentialVerifiedForInner(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 5

    .line 5613
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->isInnerAuthUserForDualDarDo(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5618
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarAuthUtils(Lcom/android/server/locksettings/LockSettingsService;)Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result v0

    .line 5619
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmContext(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v2

    .line 5621
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    .line 5619
    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LockSettingsService.DarVirtualLock"

    .line 5622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inner-layer authenticated with auth user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetUserPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 5628
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 5629
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    if-eqz p2, :cond_3

    .line 5631
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v3, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    iget-object v4, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 5633
    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 5634
    sget-object v2, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, v2}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 5636
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 5639
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->get()Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5641
    invoke-interface {v2}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->onInnerLayerUnlocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5646
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 5647
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "LockSettingsService.DarVirtualLock"

    const-string v4, "Callback might be dead..."

    .line 5644
    invoke-static {v3, v4, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5646
    :try_start_4
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 5647
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    goto :goto_1

    .line 5646
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->dispose()V

    .line 5647
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarVirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmPendingVerifiedResults(Lcom/android/server/locksettings/LockSettingsService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 5648
    throw v1

    .line 5651
    :cond_3
    :goto_3
    monitor-exit p1

    return v1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_4
    const-string p0, "LockSettingsService.DarVirtualLock"

    .line 5654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed in inner-layer authentication with auth user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p2
.end method
