.class public Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;
.super Ljava/lang/Object;
.source "KnoxNetworkFilterService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 0

    .line 2248
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2246
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2249
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "DefaultUdpConnection:onBindingDied is reached "

    .line 2266
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultUdpConnection:onBindingDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2269
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V

    .line 2271
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object p1

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2272
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2273
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object p1

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    .line 2277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.app.networkfilter"

    const-string v2, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    .line 2278
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2279
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "failed to bind udp process after onBinding died event"

    .line 2284
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "DefaultUdpConnection:onServiceConnected is reached "

    .line 2289
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultUdpConnection:onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2292
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V

    .line 2293
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 2294
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2297
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object p1

    iget p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 2299
    monitor-exit p0

    return-void

    .line 2302
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 2303
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 2306
    monitor-exit p0

    return-void

    .line 2309
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2310
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2312
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2313
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2316
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2319
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmNwFilterProxyAppUid(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)I

    move-result v5

    const-string/jumbo v6, "udp"

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 2321
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveProfileState(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 2324
    invoke-virtual {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->isV4UdpConfigured()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2325
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result p1

    .line 2326
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-virtual {v3, v4, v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(ILjava/lang/String;I)V

    .line 2329
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->isV6UdpConfigured()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2330
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result p1

    .line 2331
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p2

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->userId:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(ILjava/lang/String;I)V

    .line 2332
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mgetOemNetdService(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    const/16 p2, 0x11

    const/4 v0, 0x1

    invoke-interface {p1, v2, p2, v0}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2341
    :catch_0
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "DefaultUdpConnection:onServicedisconnected is reached "

    .line 2253
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultUdpConnection:onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2256
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultUdpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules()V

    .line 2259
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultUdpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2263
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
