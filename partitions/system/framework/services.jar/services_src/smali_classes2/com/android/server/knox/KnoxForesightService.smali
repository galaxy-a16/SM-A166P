.class public Lcom/android/server/knox/KnoxForesightService;
.super Lcom/samsung/android/knox/IBasicCommand$Stub;
.source "KnoxForesightService.java"


# static fields
.field public static KFAgentVersion:Ljava/lang/String;

.field public static sClassLoadCount:I

.field public static sInstance:Lcom/android/server/knox/KnoxForesightService;


# instance fields
.field public clientThread:Ljava/lang/Thread;

.field public dexClassLoader:Ldalvik/system/DexClassLoader;

.field public kfAgent:Lcom/samsung/android/knox/IBasicCommand;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/knox/KnoxForesightService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/knox/IBasicCommand$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->registerReceivers()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;
    .locals 2

    const-class v0, Lcom/android/server/knox/KnoxForesightService;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/android/server/knox/KnoxForesightService;

    invoke-direct {v1, p0}, Lcom/android/server/knox/KnoxForesightService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;

    .line 45
    :cond_0
    sget-object p0, Lcom/android/server/knox/KnoxForesightService;->sInstance:Lcom/android/server/knox/KnoxForesightService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public checkPlatformSignature()Z
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android"

    const-string v1, "com.samsung.android.knox.foresight"

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkPlatformSignatureByUid(I)Z
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final createThread()Ljava/lang/Thread;
    .locals 1

    .line 128
    new-instance v0, Lcom/android/server/knox/KnoxForesightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/KnoxForesightService$1;-><init>(Lcom/android/server/knox/KnoxForesightService;)V

    return-object v0
.end method

.method public getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public initializeKnoxForesight()V
    .locals 6

    .line 99
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->checkPlatformSignature()Z

    move-result v0

    const-string v1, "KnoxForesightService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "signature is not matched, ignore"

    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.samsung.android.knox.foresight"

    const/16 v3, 0x2000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->createThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Ljava/lang/Thread;

    .line 111
    iget-object v3, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget v4, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore for max load count exceeded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/knox/KnoxForesightService;->sClassLoadCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/knox/KnoxForesightService;->KFAgentVersion:Ljava/lang/String;

    .line 113
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/knox/KnoxForesightService;->dexClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->clientThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "KnoxForesight is not installed"

    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final registerReceivers()V
    .locals 4

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.foresight"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver;-><init>(Lcom/android/server/knox/KnoxForesightService;Lcom/android/server/knox/KnoxForesightService$ForesightPackageReceiver-IA;)V

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public sendCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxForesightService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/KnoxForesightService;->checkPlatformSignatureByUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cmd"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "invalid cmd received"

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "initialize"

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "unknown cmd received"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/KnoxForesightService;->initializeKnoxForesight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "caller not allowed : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCaller(Lcom/samsung/android/knox/IBasicCommand;)V
    .locals 2

    const-string/jumbo v0, "setCaller"

    const-string v1, "KnoxForesightService"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/KnoxForesightService;->checkPlatformSignatureByUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/android/server/knox/KnoxForesightService;->kfAgent:Lcom/samsung/android/knox/IBasicCommand;

    return-void

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "caller not allowed : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
