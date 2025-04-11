.class public Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 2463
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 2466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 2467
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "PersonaManagerService"

    .line 2469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserReceiver.onReceive() {action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 2471
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 2472
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V

    const-string v0, "android.intent.extra.USER"

    .line 2473
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 2474
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/16 v3, 0x12

    invoke-static {p1, v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2478
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller_id_to_show_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetanalyticsObserver(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2481
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetcontainerNames(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2482
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "DUAL_DAR_USER_ADDED"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->knoxAnalyticsContainer(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PersonaManagerService"

    .line 2484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUAL_DAR_USER_ADDED KA failed : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$3$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService$3$1;-><init>(Lcom/android/server/pm/PersonaManagerService$3;Landroid/os/UserHandle;Landroid/content/Intent;)V

    const-wide/32 v5, 0xea60

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2495
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v1, 0x5f

    if-ge p2, v1, :cond_1

    .line 2496
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2499
    :cond_1
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p2

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v1, :cond_2

    const-string p2, "PersonaManagerService"

    const-string v1, "App Separation user added. Notify to KSP"

    .line 2500
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 2502
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "activate"

    .line 2503
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    .line 2504
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2505
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mnotifyStatusToKspAgent(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Intent;)V

    .line 2507
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mprocessAppSeparationCreation(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2510
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputedm(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/EnterpriseDeviceManager;)V

    .line 2514
    :try_start_1
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result p2

    .line 2515
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 2516
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p2, v3}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p2

    .line 2517
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v4, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 2518
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2521
    :goto_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 2522
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2524
    :goto_2
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "set secure folder available state true"

    .line 2525
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    const-string/jumbo p1, "true"

    .line 2526
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 2528
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2529
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 2530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2531
    sget-object v2, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xa

    .line 2532
    invoke-static {p1, v1, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 2533
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    .line 2534
    :try_start_3
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2535
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2536
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    monitor-enter p1

    .line 2537
    :try_start_4
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2538
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2539
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2541
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p2

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onWorkProfileRemoved(I)V

    .line 2543
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputmKALockscreenTimeoutAdminFlag(Lcom/android/server/pm/PersonaManagerService;Z)V

    .line 2546
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "set secure folder available state false"

    .line 2547
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    const-string p1, "false"

    .line 2548
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    .line 2538
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2535
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_4
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 2550
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_7

    .line 2551
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 2552
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_6

    .line 2553
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2554
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2555
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2556
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2559
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mcheckForesightUpdate(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_5

    :cond_7
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 2560
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2561
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 2562
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_f

    .line 2563
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2564
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PersonaManagerService$LocalService;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2565
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2566
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 2569
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2571
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2572
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    .line 2573
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2574
    monitor-exit v2

    goto/16 :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_a
    const-string v2, "android.intent.action.USER_STOPPED"

    .line 2575
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 p2, 0x2

    .line 2576
    invoke-static {p1, v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2577
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    monitor-enter v2

    .line 2578
    :try_start_8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserHasBeenShutdownBefore(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2579
    monitor-exit v2

    goto :goto_5

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :cond_b
    const-string v2, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 2580
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2581
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2582
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/pm/PersonaManagerService;)V

    const/16 v0, 0xd

    .line 2583
    invoke-static {p1, v5, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2586
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p0

    const-string p1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onDeviceOwnerChanged(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 2587
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 2588
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "set secure folder available state true"

    .line 2589
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    const-string/jumbo p1, "true"

    .line 2590
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 2592
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 2593
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "set secure folder available state false"

    .line 2594
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    const-string p1, "false"

    .line 2595
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method
