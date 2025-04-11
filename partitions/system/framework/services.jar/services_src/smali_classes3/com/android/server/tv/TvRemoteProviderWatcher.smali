.class public final Lcom/android/server/tv/TvRemoteProviderWatcher;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviderProxies:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field public final mScanPackagesRunnable:Ljava/lang/Runnable;

.field public final mUnbundledServicePackages:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$7jMhhWhh2PXcOn76cyRZJEb2qRo(Lcom/android/server/tv/TvRemoteProviderWatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderWatcher;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScanPackagesRunnable(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscanPackages(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->scanPackages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "TvRemoteProviderWatcher"

    const/4 v1, 0x2

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    .line 217
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$1;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$2;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    iput p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    .line 70
    new-instance p2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 p3, 0x2c

    invoke-direct {p2, p3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const p3, 0x1040394

    .line 71
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    invoke-virtual {p2, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 210
    invoke-virtual {v2, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final hasNecessaryPermissions(Ljava/lang/String;)Z
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final scanPackages()V
    .locals 11

    .line 122
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    const-string v1, "TvRemoteProviderWatcher"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "scanPackages()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 133
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/tv/TvRemoteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 137
    new-instance v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/ComponentName;II)V

    .line 141
    invoke-virtual {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 142
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    if-lt v3, v4, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 145
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->start()V

    .line 146
    invoke-virtual {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->rebindIfDisconnected()V

    .line 147
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_1

    .line 151
    :cond_4
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scanPackages() targetIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v4, :cond_6

    .line 155
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 156
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public start()V
    .locals 7

    .line 87
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProviderWatcher"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 91
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 92
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 93
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 94
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 95
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 96
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 97
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 5

    .line 164
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "/"

    const/4 v2, 0x0

    const-string v3, "TvRemoteProviderWatcher"

    if-eqz v0, :cond_3

    const-string v4, "android.permission.BIND_TV_REMOTE_SERVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUnbundledServicePackages:Ljava/util/Set;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring atv remote provider service because the package has not been set and/or whitelisted: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 184
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->hasNecessaryPermissions(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring atv remote provider service because its package does not have TV_VIRTUAL_REMOTE_CONTROLLER permission: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 170
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring atv remote provider service because it did not require the BIND_TV_REMOTE_SERVICE permission in its manifest: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
