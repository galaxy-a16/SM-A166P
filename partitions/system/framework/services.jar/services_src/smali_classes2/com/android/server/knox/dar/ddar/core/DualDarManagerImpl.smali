.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;
.super Ljava/lang/Object;
.source "DualDarManagerImpl.java"


# static fields
.field public static delayDataLockOnceForDeviceOwner:Z = false


# instance fields
.field public final hardResetTask:Ljava/lang/Runnable;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

.field public final mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public static synthetic $r8$lambda$9VVaXNAQHpygxkHmzFrgiCo_yys(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$updateBlockedClearablePackages$1(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvwGaNR9bCIpg8LNIZ1FKNT_1T0(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rqIO7TRQv8LWU5ZNGQnED1tk_RM(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->lambda$updateBlockedClearablePackages$0(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    new-instance v0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DualDarManagerImpl"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->handleDataLock(I)V

    return-void
.end method

.method public static synthetic lambda$updateBlockedClearablePackages$0(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/knox/dar/DarManagerService;->addBlockedClearablePackages(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$updateBlockedClearablePackages$1(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/knox/dar/DarManagerService;->addBlockedClearablePackages(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelDataLock(I)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Cancel data lock"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDarManagerImpl"

    invoke-static {v2, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sput-boolean v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDarManagerService()Ljava/util/Optional;
    .locals 0

    const-string p0, "dar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public handleClearDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .locals 5

    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRemoveLicenseExpiryTimer cancelled alarm successful for user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "DualDarManagerImpl"

    invoke-static {v4, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    return v1

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public handleDataLock(I)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0xea60

    const/4 v5, 0x0

    const-string v6, "DualDarManagerImpl"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "User is on the phone now. Check in 60 seconds again."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    if-nez v2, :cond_2

    const-string p1, "User is interactive now. Delay once for 60 seconds."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->delayDataLockOnceForDeviceOwner:Z

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->hardResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v2, "Perform hard reboot when datalock in DO case"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "data lock timeout for dualdar"

    invoke-virtual {p1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public handleDeviceOwnerProvisioning(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "DualDarManagerImpl"

    const-string v1, "handleDeviceOwnerProvisioning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDualDarDoProperty(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->updateBlockedClearablePackages(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleDeviceOwnerProvisioning()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDeviceUnlockedForUser(IZ)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setInnerAuthUserId()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDualDarDoProperty(Z)V

    :goto_0
    return p1
.end method

.method public handleEnsureDataUnlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DualDarManagerImpl"

    const-string v0, "handleEnsureDataUnlocked - Not able to ensure while device lockscreen is set"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v1, v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    invoke-virtual {p0, v1, v1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->setDeviceUnlockedForUser(IZ)V

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public handleScheduleDualDarTrialExpiryTimer(Landroid/os/Bundle;)Z
    .locals 6

    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "TRIAL_SCHEDULED_TIME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "IS_CREATION"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v3, "DualDarManagerImpl"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setting alarm for license expiry, isCreation = true"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    if-nez p1, :cond_1

    const-string/jumbo p1, "setting alarm for license expiry, isCreation = false"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->scheduleDualDarTrialExpiryTimer(IJ)Z

    move-result p0

    return p0

    :cond_1
    return v4
.end method

.method public isInnerLayerUnlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getDualDARLockstate()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInnerLayerUnlocked - result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualDarManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final scheduleDualDarTrialExpiryTimer(IJ)Z
    .locals 9

    new-instance v5, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mLicenseExpiryAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderClearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    const-string v4, "LicenseNotificationHandler.LicenseLockForUser"

    const/4 v6, 0x0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mInjector:Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public final setDeviceUnlockedForUser(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "trust"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method public final setDualDarDoProperty(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string/jumbo p1, "persist.sys.dualdar.do"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setInnerAuthUserId()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->reserveUserIdForSystem()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setMainUserId(II)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->setInnerAuthUserId(II)V

    :cond_0
    return-void
.end method

.method public final updateBlockedClearablePackages(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "DUAL_DAR_ADMIN_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dualdar-config-client-package"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getDarManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->getDarManagerService()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method
