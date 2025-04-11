.class public Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;
.super Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;
.source "SemHwrsServiceImpl.java"


# instance fields
.field public final mBrReceiver:Landroid/content/BroadcastReceiver;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentUserHandle(Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    new-instance p2, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;-><init>(Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;)V

    iput-object p2, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;
    .locals 2

    const-string v0, "[HWRS_SYS]SemHwrsService"

    const-string v1, "createInstance entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    return-object v1
.end method


# virtual methods
.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public bridge synthetic isCameraShareEnable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->isCameraShareEnable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onUserSwitching(Landroid/os/UserHandle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->onUserSwitching(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUserUnlocking(Landroid/os/UserHandle;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserUnlocking - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HWRS_SYS]SemHwrsService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    iput v0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mCurrentUserId:I

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;->mPrecondManager:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->startUser(Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setCurrentUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-void
.end method
