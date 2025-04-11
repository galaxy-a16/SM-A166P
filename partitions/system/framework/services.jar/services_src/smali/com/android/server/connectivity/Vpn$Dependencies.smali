.class public Lcom/android/server/connectivity/Vpn$Dependencies;
.super Ljava/lang/Object;
.source "Vpn.java"


# direct methods
.method public static synthetic $r8$lambda$UvGdPzVMLepJmgYf3vc_W-HxR98(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn$Dependencies;->lambda$resolve$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$resolve$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 747
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public adoptFd(Lcom/android/server/connectivity/Vpn;I)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies;->jniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result p0

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public calculateVpnMtu(Ljava/util/List;IIZ)I
    .locals 0

    .line 869
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IIZ)I

    move-result p0

    return p0
.end method

.method public getDataStallResetSessionSeconds(I)J
    .locals 0

    .line 847
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RESET_DELAYS_SEC()[J

    move-result-object p0

    array-length p0, p0

    if-lt p1, p0, :cond_0

    .line 848
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RESET_DELAYS_SEC()[J

    move-result-object p0

    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RESET_DELAYS_SEC()[J

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    return-wide p0

    .line 850
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetDATA_STALL_RESET_DELAYS_SEC()[J

    move-result-object p0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .locals 0

    .line 642
    const-class p0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 0

    .line 646
    invoke-static {p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getJavaNetworkInterfaceMtu(Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 859
    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p2

    :goto_0
    return p2
.end method

.method public getNextRetryDelayMs(I)J
    .locals 0

    .line 815
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    array-length p0, p0

    if-lt p1, p0, :cond_0

    .line 816
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p0, p0, p1

    return-wide p0

    .line 818
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->-$$Nest$sfgetIKEV2_VPN_RETRY_DELAYS_MS()[J

    move-result-object p0

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getStateFile()Ljava/io/File;
    .locals 1

    .line 638
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/misc/vpn/state"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public isCallerSystem()Z
    .locals 1

    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInterfacePresent(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z
    .locals 0

    .line 760
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceRunning(Ljava/lang/String;)Z
    .locals 0

    .line 630
    invoke-static {p1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isServiceStopped(Ljava/lang/String;)Z
    .locals 0

    .line 634
    invoke-static {p1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public jniCreate(Lcom/android/server/connectivity/Vpn;I)I
    .locals 0

    .line 775
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$misSecureWifiPackage(Lcom/android/server/connectivity/Vpn;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 776
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCreateSecureWifi(Lcom/android/server/connectivity/Vpn;I)I

    move-result p0

    return p0

    .line 779
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCreate(Lcom/android/server/connectivity/Vpn;I)I

    move-result p0

    return p0
.end method

.method public jniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;
    .locals 0

    .line 786
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniGetName(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public jniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 793
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniSetAddresses(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public newNetworkAgent(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)Landroid/net/NetworkAgent;
    .locals 11

    .line 838
    new-instance v10, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V

    return-object v10
.end method

.method public newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 824
    new-instance p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-object p0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10

    const-string v0, "Vpn"

    .line 706
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 711
    :catch_0
    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 713
    :try_start_1
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v1

    .line 714
    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 715
    new-instance v7, Lcom/android/server/connectivity/Vpn$Dependencies$1;

    invoke-direct {v7, p0, p1, v9}, Lcom/android/server/connectivity/Vpn$Dependencies$1;-><init>(Lcom/android/server/connectivity/Vpn$Dependencies;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 746
    new-instance v5, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/connectivity/Vpn$Dependencies$$ExternalSyntheticLambda0;-><init>()V

    move-object v3, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 748
    invoke-virtual {v9}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "Legacy VPN was interrupted while resolving the endpoint"

    .line 753
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 755
    throw p0

    :catch_2
    move-exception p0

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve VPN endpoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    throw p0
.end method

.method public sendArgumentsToDaemon(Ljava/lang/String;Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$RetryScheduler;)V
    .locals 7

    .line 652
    new-instance p0, Landroid/net/LocalSocketAddress;

    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p1, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    :goto_0
    const/4 v0, 0x1

    .line 658
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x1f4

    .line 665
    invoke-virtual {p2, p0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 667
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 668
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    .line 669
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 670
    array-length v5, v4

    const v6, 0xffff

    if-ge v5, v6, :cond_0

    .line 673
    array-length v5, v4

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 674
    array-length v5, v4

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 675
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 676
    invoke-interface {p4, v2}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 671
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p3, 0xff

    .line 678
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 679
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    const-string p0, "charon"

    .line 683
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 689
    :cond_2
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 692
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    return-void

    .line 698
    :catch_0
    :cond_3
    invoke-interface {p4, v0}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_2

    .line 663
    :catch_1
    invoke-interface {p4, v0}, Lcom/android/server/connectivity/Vpn$RetryScheduler;->checkInterruptAndDelay(Z)V

    goto :goto_0
.end method

.method public setBlocking(Ljava/io/FileDescriptor;Z)V
    .locals 2

    .line 801
    :try_start_0
    invoke-static {p1, p2}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 803
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set tunnel\'s fd as blocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startService(Ljava/lang/String;)V
    .locals 0

    .line 622
    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    return-void
.end method

.method public stopService(Ljava/lang/String;)V
    .locals 0

    .line 626
    invoke-static {p1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public verifyCallingUidAndPackage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 875
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$smgetAppUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p0, :cond_0

    return-void

    .line 876
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to uid "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
