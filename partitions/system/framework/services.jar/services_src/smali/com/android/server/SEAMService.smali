.class public Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# static fields
.field public static SELF_PID:I

.field public static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLock:Ljava/lang/Object;

.field public final mSKHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSKHandler(Lcom/android/server/SEAMService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSKLog()Lcom/android/server/SKLogger;
    .locals 1

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SEAMService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    new-instance p1, Lcom/android/server/SEAMService$1;

    const-string v0, "Service Keeper Thread"

    invoke-direct {p1, p0, v0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/android/server/SEAMService;->SELF_PID:I

    return-void
.end method


# virtual methods
.method public activateDomain(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public addAppToContainer(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public changeAppDomain(Ljava/lang/String;Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public createSEContainer()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public deActivateDomain()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivationStatus()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDs()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasKnoxContainers()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasSEContainers()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget v0, Lcom/android/server/SEAMService;->SELF_PID:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "SEAMService"

    const-string p2, "Returning 0 directly as tables are not ready in SK."

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public relabelData(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public removeAppFromContainer(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public removeSEContainer(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
