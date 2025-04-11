.class public Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final MAXIMUM_SERVICE_ALIVE_TIMEOUT:I = 0x258

.field private static final ONE_UI_6_1_0:I = 0xeac4

.field private static final TAG:Ljava/lang/String; = "TrustChain::Agent"


# instance fields
.field private chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

.field private final mLock:Ljava/lang/Object;

.field private mSafeToStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mSafeToStop:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->lambda$onUnbind$0()V

    return-void
.end method

.method private isSafeToStop()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mSafeToStop:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isTrustChainAvailable(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getBuildType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "TrustChain::Agent"

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOneUiVersion()I

    move-result p0

    const v3, 0xeac4

    if-ge p0, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "This OneUI version can not work ChainService. current : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOneUiVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", required : more than 6.1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isChinaDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "This is China device - unsupported device"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isModelVST()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOSVersionInt()I

    move-result p0

    const/16 v3, 0x22

    if-gt p0, v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Android version is too low for VST device. current : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOneUiVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", required : more than 34"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Multi-User-Mode, but not system user"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onUnbind$0()V
    .locals 2

    const-string v0, "Wait for the timers expired "

    const-string v1, "TrustChain::Agent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x258

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->await(I)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->isSafeToStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Terminating the service "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method private setSafeState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->mSafeToStop:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBind : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::Agent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->isTrustChainAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "com.samsung.android.kmxservice.trustchain.CHAIN_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->setSafeState(Z)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    if-nez v0, :cond_2

    const-string v0, "member_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, La9/a;

    invoke-direct {v2}, La9/a;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;-><init>(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string p1, "create fail with wrong memberId"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    return-object p0

    :cond_3
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->chainService:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-direct {p0, p0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->isTrustChainAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TrustChain::Agent"

    if-nez v0, :cond_1

    const-string p1, "onStartCommand - not running condition , stopSelf()"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p0, 0x2

    return p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand :: got called "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :: flags : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnbind : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::Agent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/TrustChainAgent;->setSafeState(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lt/a;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
