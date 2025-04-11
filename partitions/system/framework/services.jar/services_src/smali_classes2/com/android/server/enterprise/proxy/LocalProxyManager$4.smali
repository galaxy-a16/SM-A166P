.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LocalProxyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mgetWifiManager(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/ProxyProperties;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetmProxyLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$smgetDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$misDirectProxy(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetsWifiProxyInfoMapCache()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mupdateProxyInWifiConfig(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmConnectedWifiSsid(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfgetmProxyLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsDefaultProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$4;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mhandleLocalProxyServer(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
