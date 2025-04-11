.class public Lcom/android/server/enterprise/proxy/LocalProxyManager;
.super Ljava/lang/Object;
.source "LocalProxyManager.java"


# static fields
.field public static final mNetworkCallbackLock:Ljava/lang/Object;

.field public static final mProxyLock:Ljava/lang/Object;

.field public static volatile sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

.field public static volatile sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public static volatile sIsLocalProxyServerRunning:Z

.field public static volatile sIsNetworkCallbackRunning:Z

.field public static volatile sLocalProxyInfo:Landroid/net/ProxyInfo;

.field public static final sLocalProxyManagerLock:Ljava/lang/Object;

.field public static volatile sPendinOperationsList:Ljava/util/List;

.field public static volatile sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

.field public static volatile sWifiProxyInfoMapCache:Ljava/util/Map;


# instance fields
.field public DBG:Z

.field public mCallbackService:Lcom/android/net/IProxyCallback;

.field public mConnectedWifiSsid:Ljava/lang/String;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public mLastCredentialsResponse:Landroid/os/Bundle;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mProxyConnection:Landroid/content/ServiceConnection;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$7GpJXI8-5FwmoFlxYx8FFRVKhlU(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$stopLocalProxyServer$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$7K6tETGCqZUx1CUhT7SxgEP-ZP0(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$clearNotificationDialog$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$90IO0IOnhhKNOV1nZbwUibY48GE(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setProxyCredentials$16(Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MmpKSTm0F3kiebKxecQG-du6p7s(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$unregisterNetworkCallback$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$S6jT3s7gAWp_KWi6Z-dn1EddRGg(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$showCredentialsDialogNotification$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TUZIH5dTi1R-Ssa5XCBhtR01sxU(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateWifiBackCompatCredentialsCache$10(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zm97DsWiCdrQzMy3haUShwVRwWM(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateProxyInWifiConfig$2(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c9o8ONOTxNuHoeTUQbAUqGduL4U(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$startLocalProxyServer$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$d9Eh0Rq8RcdmWXrzSmFANrJ4DT0(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$registerNetworkCallback$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$fOMPxIk44sfE_xpiAFMNuHYeF5o(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setGlobalProxy$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fh9nssItbT-teyZreJFHu14Q1cI(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$getAppUidBrowserList$12(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goDZOfIl1xBBK7-b-514AEzrhNU(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$removeDefaultProxyFromWifiNetwork$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k8LZDyKL2hDu4MHyb3VkPdcOjog(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$setGlobalProxyPac$1(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGadGDmNPiCGGPUCIUZq1ap0YtQ(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$refreshCredentialsDialogFails$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$nonOEPEXM-azj4fZnH0NCzaX4Bw(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateWifiProxyCache$8(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$upsevEmqNi2GSyVmWSrKieBwHnA(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$clearProxyServerCache$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$xOPUJpLGO-p0nSFkY7DceaHM_Gs(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$dumpEnterpriseProxyCache$9(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetDBG(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Lcom/android/net/IProxyCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/android/net/IProxyCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecutePendingOperations(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->executePendingOperations()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetWifiManager(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDirectProxy(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLocalProxyPort(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setLocalProxyPort(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateProxyInWifiConfig(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmProxyLock()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsIsLocalProxyServerRunning(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 77
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    .line 706
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v0, "LocalProxyManager"

    const-string v1, "Initializing LocalProxyManager"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 104
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 128
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 122
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;
    .locals 2

    .line 89
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    if-nez v0, :cond_1

    .line 91
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 96
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

.method private synthetic lambda$clearNotificationDialog$15()V
    .locals 3

    .line 933
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "LocalProxyManager"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$clearProxyServerCache$11()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v0, :cond_0

    .line 846
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string v1, "clearCache"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    goto :goto_0

    .line 850
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/net/IProxyCallback;->clearProxyServerCache()V

    .line 851
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isAnyEnterpriseProxySet()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/net/IProxyCallback;->setEnterpriseProxy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LocalProxyManager"

    const-string v1, "Failed to clear proxy server cache"

    .line 853
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$dumpEnterpriseProxyCache$9(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiProxy for ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PAC file url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 700
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getAppUidBrowserList$12(Ljava/util/List;)V
    .locals 5

    .line 864
    sget-object v0, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 867
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 868
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 872
    :cond_1
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LocalProxyManager"

    const-string v3, "Failed to get browser uid list"

    .line 874
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$refreshCredentialsDialogFails$13()V
    .locals 2

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdm"

    .line 888
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$registerNetworkCallback$6()V
    .locals 3

    .line 550
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 551
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 552
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 555
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter p0

    .line 556
    :try_start_0
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synthetic lambda$removeDefaultProxyFromWifiNetwork$3(Ljava/util/List;)V
    .locals 3

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$setGlobalProxy$0()V
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method private synthetic lambda$setGlobalProxyPac$1(Landroid/net/ProxyInfo;)V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    return-void
.end method

.method private synthetic lambda$setProxyCredentials$16(Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v0, :cond_0

    .line 946
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 947
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    .line 948
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string/jumbo p2, "setProxyCredentials"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    goto :goto_0

    .line 952
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p1}, Lcom/android/net/IProxyCallback;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LocalProxyManager"

    const-string p2, "Faield to set received credentials"

    .line 954
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showCredentialsDialogNotification$14(Ljava/lang/String;)V
    .locals 3

    .line 900
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x50800000

    .line 901
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdm"

    const-string v2, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    .line 903
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "proxy"

    .line 905
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 910
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 914
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040abc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 915
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 916
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 917
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 919
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "LocalProxyManager"

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$startLocalProxyServer$4()V
    .locals 0

    .line 490
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindToLocalProxyServer()V

    return-void
.end method

.method private synthetic lambda$stopLocalProxyServer$5()V
    .locals 0

    .line 499
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->unbindLocalProxyServer()V

    return-void
.end method

.method private synthetic lambda$unregisterNetworkCallback$7()V
    .locals 2

    .line 568
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 569
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 570
    :try_start_0
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    .line 571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void

    :catchall_0
    move-exception p0

    .line 571
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$updateProxyInWifiConfig$2(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 5

    .line 299
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 301
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    .line 302
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    .line 308
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setWifiConfigProxyProperties(Landroid/net/wifi/WifiConfiguration;ZLandroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V

    .line 307
    invoke-virtual {p1, p3, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$updateWifiBackCompatCredentialsCache$10(Ljava/lang/String;Lcom/samsung/android/knox/net/AuthConfig;)V
    .locals 1

    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateWifiProxyCache$8(Ljava/lang/String;Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 2

    if-nez p0, :cond_0

    .line 609
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 613
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method


# virtual methods
.method public final declared-synchronized bindProxyService()V
    .locals 4

    monitor-enter p0

    .line 205
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 220
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bindToLocalProxyServer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "LocalProxyManager"

    const-string v1, "Starting enterprise proxy server"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "No context for binding"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 196
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearNotificationDialog()V
    .locals 2

    .line 930
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const-string v1, "LocalProxyManager"

    if-eqz v0, :cond_0

    const-string v0, "Clear notification dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 932
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "NotificationManager is null"

    .line 937
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public clearProxyServerCache()V
    .locals 1

    .line 844
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final clearWifiProxyCache()V
    .locals 4

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 590
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 595
    sput-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sDefaultProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->removeDefaultProxyFromWifiNetwork(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    .line 596
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpEnterpriseProxyCache(Ljava/io/PrintWriter;)V
    .locals 5

    .line 677
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    const-string v0, "PAC file url: "

    const-string v1, "Port: "

    const-string v2, "Host: "

    if-eqz p0, :cond_0

    const-string v3, "\nEnforced GlobalProxy:"

    .line 679
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 683
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v3, "Enforced WifiProxy:"

    .line 687
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "\n\n"

    .line 691
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    :cond_1
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 694
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda8;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    return-void
.end method

.method public final executePendingOperations()V
    .locals 4

    .line 365
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    iget-boolean v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute pending operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalProxyManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "clearCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "setProxyCredentials"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    .line 377
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 373
    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getAppUidBrowserList()Ljava/util/List;
    .locals 2

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v0
.end method

.method public getAppUidFromSocketPortNumber(I)Ljava/lang/String;
    .locals 1

    const-string v0, "/proc/net/tcp"

    .line 976
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/proc/net/tcp6"

    .line 980
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getAppUidFromTcpFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string p0, "LocalProxyManager"

    .line 645
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 647
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    .line 652
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    if-le v3, v5, :cond_0

    const-string v6, " +"

    .line 656
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 657
    aget-object v7, v4, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 658
    aget-object v6, v4, v6

    add-int/2addr v7, v5

    .line 659
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 658
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 660
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 p2, 0x8

    .line 661
    aget-object p2, v4, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p2

    .line 666
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 647
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public final getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 534
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 537
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result p2

    if-eq p2, p3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 538
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public final getConnectivityManagerService()Landroid/net/ConnectivityManager;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getCurrentAppliedProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 3

    .line 794
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 795
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    const-string v2, "LocalProxyManager"

    if-eqz v1, :cond_1

    .line 798
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "Get current applied global proxy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 801
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_3

    const-string p0, "Get current applied default proxy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getGlobalProxyCache()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 0

    .line 839
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    return-object p0
.end method

.method public getLocalProxyInfo()Landroid/net/ProxyInfo;
    .locals 0

    .line 241
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public getProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->readAuthConfigFromProxyCache(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 811
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 813
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 814
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v3

    .line 817
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_1

    if-ne v3, p2, :cond_1

    .line 821
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_1

    .line 823
    :cond_1
    sget-object v5, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v3, v2, :cond_0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 829
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyCredentialsForSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 830
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getProxyCredentialsForSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiBackCompatCredentialsMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/net/AuthConfig;

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 0

    .line 963
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/ProxyProperties;

    return-object p0
.end method

.method public final getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public final handleLocalProxyServer()V
    .locals 4

    .line 400
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    .line 401
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v1

    .line 403
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isPacProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setGlobalProxyPac()V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldStartLocalProxyServer(ZZ)Z

    move-result v2

    const-string v3, "LocalProxyManager"

    if-eqz v2, :cond_2

    .line 406
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Starting enterprise local proxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->startLocalProxyServer()V

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldStopLocalProxyServer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Stopping enterprise local proxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->stopLocalProxyServer()V

    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldUpdateWifiProxyValues(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "Updating proxy values"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyValues()V

    goto :goto_0

    .line 415
    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->shouldClearProxyValues(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Clearing proxy values"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    :cond_8
    :goto_0
    return-void
.end method

.method public final handleNetworkCallback()V
    .locals 1

    .line 387
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->registerNetworkCallback()V

    goto :goto_0

    .line 389
    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->unregisterNetworkCallback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isAnyEnterpriseProxySet()Z
    .locals 0

    .line 582
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p0

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

.method public final isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPacProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final readAuthConfigFromProxyCache(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .line 512
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    .line 513
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v1

    const-string v2, " port "

    const-string v3, "LocalProxyManager"

    if-eqz v1, :cond_1

    .line 516
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading auth config for global proxy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_3

    .line 519
    iget-boolean v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading auth config for default proxy "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAuthConfigOrNull(Lcom/samsung/android/knox/net/ProxyProperties;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public refreshCredentialsDialogFails()V
    .locals 2

    .line 884
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Refresh proxy credentials dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 886
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final declared-synchronized registerNetworkCallback()V
    .locals 2

    monitor-enter p0

    .line 547
    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 548
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "LocalProxyManager"

    const-string v1, "Register proxy network callback for wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeDefaultProxyFromWifiNetwork(Ljava/util/List;)V
    .locals 1

    .line 350
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public removeWifiProxy(Ljava/lang/String;)V
    .locals 2

    .line 786
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "LocalProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing wifi proxy for ssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter p0

    .line 788
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setGlobalProxy()V
    .locals 2

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise global proxy value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setGlobalProxyPac()V
    .locals 3

    .line 281
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    iget-boolean v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "LocalProxyManager"

    const-string v2, "Set global PAC proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/net/ProxyInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized setLocalProxyPort(I)V
    .locals 3

    monitor-enter p0

    .line 231
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set local proxy port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object p1

    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 234
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxyValues()V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyValues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 234
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 2

    .line 943
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Set proxy credentials callback to proxy server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setWifiConfigProxyProperties(Landroid/net/wifi/WifiConfiguration;ZLandroid/net/ProxyInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 337
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 338
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 340
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 341
    invoke-virtual {p0, p3}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 342
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object p1
.end method

.method public final shouldClearProxyValues(ZZ)Z
    .locals 0

    .line 0
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldStartLocalProxyServer(ZZ)Z
    .locals 0

    .line 430
    sget-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldStopLocalProxyServer()Z
    .locals 1

    .line 440
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isAnyEnterpriseProxySet()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldUpdateWifiProxyValues(Z)Z
    .locals 0

    .line 450
    sget-boolean p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showCredentialsDialogNotification(Ljava/lang/String;)V
    .locals 2

    .line 895
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    const-string v1, "LocalProxyManager"

    if-eqz v0, :cond_0

    const-string v0, "Show credentials dialog notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    .line 899
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_2
    const-string p0, "NotificationManager is null"

    .line 924
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startLocalProxyServer()V
    .locals 1

    .line 489
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final stopLocalProxyServer()V
    .locals 1

    .line 498
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final declared-synchronized unbindLocalProxyServer()V
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "LocalProxyManager"

    const-string v1, "Stopping enterprise proxy server"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearNotificationDialog()V

    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 145
    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 146
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    const/4 v0, 0x0

    .line 148
    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterNetworkCallback()V
    .locals 2

    monitor-enter p0

    .line 565
    :try_start_0
    sget-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 566
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "LocalProxyManager"

    const-string v1, "Unregister proxy network callback for wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V
    .locals 2

    .line 753
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating global proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sGlobalProxy:Lcom/samsung/android/knox/net/ProxyProperties;

    .line 756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void

    :catchall_0
    move-exception p0

    .line 756
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateGlobalProxyValues()V
    .locals 2

    .line 248
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise global proxy values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->setGlobalProxy()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    .locals 1

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateWifiBackCompatCredentialsCache(Ljava/util/Map;)V
    .locals 1

    .line 774
    iget-boolean p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "LocalProxyManager"

    const-string v0, "Updating backwards wifi proxy cache"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 775
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 776
    :cond_1
    new-instance p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateWifiProxy(Ljava/util/Map;)V
    .locals 2

    .line 762
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating wifi proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearWifiProxyCache()V

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxyCache(Ljava/util/Map;)V

    .line 769
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleNetworkCallback()V

    return-void
.end method

.method public final updateWifiProxyCache(Ljava/util/Map;)V
    .locals 0

    .line 606
    new-instance p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final updateWifiProxyValues()V
    .locals 3

    .line 258
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocalProxyManager"

    const-string v1, "Updating enterprise wifi proxy values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    :cond_1
    return-void
.end method
