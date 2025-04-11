.class public Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
.super Ljava/lang/Object;
.source "DomainFilterNapCommon.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DomainFilterNapCommon"

.field public static sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mCallbackRegistered:Z

.field public mConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mContext:Landroid/content/Context;

.field public volatile mDomainFilterEnabled:Z

.field public volatile mDomainFilterOnIptablesEnabled:Z

.field public volatile mNapEnabled:Z

.field public volatile mNetworksUpdated:Z


# direct methods
.method public static synthetic $r8$lambda$WQzeKPncNbVqhyKOVRPrslV8qNk(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->lambda$registerConnectivityCallback$0(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$arfiXBEup7GlKSDpoc7B5JFFzBQ(Z)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->lambda$setNapProperty$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gI4qguDAclqhacPZigtlxYlDcmk(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->lambda$unregisterConnectivityCallback$1(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasFeatureEnabled(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->hasFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEnforceDnsUidForNetwork(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForNetwork(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 55
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
    .locals 2

    .line 59
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    if-nez v0, :cond_1

    .line 61
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->sInstance:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 66
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$registerConnectivityCallback$0(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V
    .locals 1

    .line 83
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 84
    sget-object p1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string p2, "callback registered"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    return-void
.end method

.method public static synthetic lambda$setNapProperty$2(Z)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string/jumbo v0, "net.knox.nap"

    .line 128
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 130
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string v1, "Unable to set NPA feature property"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$unregisterConnectivityCallback$1(Landroid/net/ConnectivityManager;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    .line 98
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string p1, "callback unregistered"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final hasFeatureEnabled()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final registerConnectivityCallback()V
    .locals 3

    .line 72
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerConnectivityCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 82
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest$Builder;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    return-void
.end method

.method public setDomainFilterEnabled(Z)V
    .locals 3

    .line 104
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDomainFilterEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterEnabled:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V

    return-void
.end method

.method public setDomainFilterOnIptablesEnabled(Z)V
    .locals 3

    .line 110
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDomainFilterOnIptablesEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    return-void
.end method

.method public setNapEnabled(Z)V
    .locals 3

    .line 116
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNapEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V

    return-void
.end method

.method public setNapProperty(Z)V
    .locals 3

    .line 123
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNapProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->shouldDisableNapProperty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 125
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    return-void
.end method

.method public final shouldDisableNapProperty()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mDomainFilterOnIptablesEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final unregisterConnectivityCallback()V
    .locals 3

    .line 91
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterConnectivityCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mCallbackRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 95
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;Landroid/net/ConnectivityManager;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized updateEnforceDnsUidForAllNetworks()V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->hasFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string v1, "Already updated networks, leaving"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->hasFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string v1, "Features are disabled, reverting enforce dns uid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->unregisterConnectivityCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    const-string v1, "Feature enabled, enforcing dns uid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNetworksUpdated:Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->registerConnectivityCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateEnforceDnsUidForAllNetworks(Z)V
    .locals 4

    .line 163
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnforceDnsUidForAllNetworks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string p0, "Failed to get connectivity manager instance"

    .line 166
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 172
    invoke-virtual {v3}, Landroid/net/Network;->getNetId()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForNetwork(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateEnforceDnsUidForNetwork(IZ)V
    .locals 0

    .line 178
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->updateEnforceDnsUidForNetwork(IZ)V

    return-void
.end method
