.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDarManagerProxy.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public final enforceCallingUser(I)V
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x1482

    if-eq p0, v0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only be called by system user. callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DualDarManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SCHEDULE_DATA_LOCK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "ENSURE_DATA_UNLOCKED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "IS_INNER_LAYER_UNLOCKED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "CLEAR_TRIAL_PERIOD_TIME"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "CANCEL_DATA_LOCK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "SET_TRIAL_PERIOD_TIME"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string/jumbo v1, "user_id"

    const-string v2, "dual_dar_response"

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->cancelDataLock(I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDataLock(I)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleEnsureDataUnlocked()Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->isInnerLayerUnlocked()Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->enforceCallingUser(I)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerProxy;->mDualDarManagerImpl:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x69b863fb -> :sswitch_6
        -0x68086ae5 -> :sswitch_5
        0x6bc9530 -> :sswitch_4
        0x37362b4f -> :sswitch_3
        0x3e778197 -> :sswitch_2
        0x481c6342 -> :sswitch_1
        0x552734f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
