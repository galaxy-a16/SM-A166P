.class public Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;
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

    .line 2134
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2132
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2135
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "DefaultTcpConnection:onBindingDied is reached "

    .line 2153
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultTcpConnection:onBindingDied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V

    .line 2158
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object p1

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2159
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2160
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object p1

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    .line 2164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.app.networkfilter"

    const-string v2, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    .line 2165
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpConnectionList(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "failed to bind tcp process after onBinding died event"

    .line 2171
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "DefaultTcpConnection:onServiceConnected is reached "

    .line 2176
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultTcpConnection:onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2179
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V

    .line 2180
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 2181
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2184
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object p1

    iget p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2186
    monitor-exit p0

    return-void

    .line 2189
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    .line 2190
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 2193
    monitor-exit p0

    return-void

    .line 2196
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2197
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2199
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2200
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2203
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2206
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmNwFilterProxyAppUid(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)I

    move-result v6

    const-string/jumbo v7, "tcp"

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    .line 2208
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveProfileState(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 2211
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->isV4TcpConfigured()Z

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 2212
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result v4

    .line 2213
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-virtual {v7, v8, p2, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(ILjava/lang/String;I)V

    .line 2214
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mgetOemNetdService(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/internal/net/IOemNetd;

    move-result-object p2

    invoke-interface {p2, v0, v5, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIZ)V

    .line 2217
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->isV6TcpConfigured()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2218
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result p1

    .line 2219
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p2

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(ILjava/lang/String;I)V

    .line 2220
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mgetOemNetdService(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    invoke-interface {p1, v3, v5, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIZ)V

    .line 2223
    :cond_4
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    move-result p1

    .line 2224
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object p2

    .line 2225
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mgetOemNetdService(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(I)V

    .line 2226
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v0

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZII)V

    .line 2228
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 2229
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterHelper(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->userId:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 2231
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2241
    :catch_0
    :cond_6
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

    const-string v0, "DefaultTcpConnection:onServicedisconnected is reached "

    .line 2139
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmLocalProxyStatus(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultTcpConnection:onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fputmDefaultTcpProxyInterface(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules()V

    .line 2145
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules()V

    .line 2146
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultTcpConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$fgetmKnoxNwFilterFw(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2150
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
