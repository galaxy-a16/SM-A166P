.class public Lcom/samsung/android/server/audio/DvfsHelper;
.super Ljava/lang/Object;
.source "DvfsHelper.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/DvfsHelper;


# instance fields
.field public final boostChecker:Ljava/lang/Runnable;

.field public mCPUBoostValueForVoIP:I

.field public mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

.field public mHandler:Landroid/os/Handler;

.field public mIsCPUBoostedForVoIP:Z

.field public mIsScreenOn:Z

.field public mRetryDelayMs:I

.field public mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public static synthetic $r8$lambda$8PQsim5w1d6yYOtwyutvNgYszy4(Lcom/samsung/android/server/audio/DvfsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;

    invoke-direct {v0}, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    const/16 v0, 0x6d60

    iput v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DvfsHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DvfsHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DvfsHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    :cond_0
    sget-object p0, Lcom/samsung/android/server/audio/DvfsHelper;->sInstance:Lcom/samsung/android/server/audio/DvfsHelper;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->releaseCPUBoost()V

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireCPUBoost()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "acquire() cpu min lock for audio VoIP"

    const-string v1, "AS.DvfsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    const-string v0, "acquireCPUBoost CPU state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public getCPUBoostValueForVoIP()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    return p0
.end method

.method public getIsScreenOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    const-string v1, "AUDIOSERVICE_VOIP_BOOST"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_0

    const/16 v0, 0xce4

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AS.DvfsHelper"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public releaseCPUBoost()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "AS.DvfsHelper"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "release() cpu min lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "releaseCPUBoost CPU state lock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    return-void
.end method

.method public startCPUBoostForVoIP(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const-string v2, "AS.DvfsHelper"

    if-nez v1, :cond_0

    const-string p0, "DvfsManager is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    if-eqz v1, :cond_1

    const-string v1, "initCPUBoost create cpu state lock"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCPUBoostValueForVoIP:I

    const v2, 0x10003000

    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(III)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    return-void
.end method

.method public stopCPUBoostForVoIP()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
