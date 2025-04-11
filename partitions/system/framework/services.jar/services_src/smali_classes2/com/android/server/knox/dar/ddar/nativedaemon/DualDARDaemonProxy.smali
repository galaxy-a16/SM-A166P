.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;


# instance fields
.field public isDaemonConnectionFailed:Z

.field public mAm:Landroid/app/ActivityManager;

.field public final mBlockedClearablePackages:Ljava/util/List;

.field public mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

.field public mConnectorThread:Ljava/lang/Thread;

.field public final mDualDARDOPolicyPackages:Ljava/util/List;

.field public mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 101
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 102
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 108
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    const-string v0, "DualDARDaemonProxy() called"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    .line 118
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    sput-object p1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    :cond_0
    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 770
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 862
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 865
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 866
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 868
    :try_start_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 870
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const/16 v2, 0x400

    new-array v3, v2, [B

    if-le p0, v2, :cond_0

    add-int/lit16 p0, p0, -0x400

    move v5, v2

    move v2, p0

    move p0, v5

    goto :goto_1

    :cond_0
    move v2, v1

    .line 883
    :goto_1
    invoke-virtual {p1, v3, v1, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    .line 884
    invoke-virtual {v4, v3, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move p0, v2

    goto :goto_0

    .line 893
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 900
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 903
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    const/4 v1, 0x1

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, v2

    :goto_4
    move-object v2, v4

    goto :goto_9

    :catch_3
    move-exception p0

    move-object p1, v2

    :goto_5
    move-object v2, v4

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_9

    :catch_4
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object p1, v2

    goto :goto_9

    :catch_5
    move-exception p0

    move-object p1, v2

    :goto_6
    :try_start_6
    const-string v3, "fail to open inputstream from FileDescriptor"

    new-array v4, v1, [Ljava/lang/Object;

    .line 888
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 889
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_2

    .line 893
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_7
    if-eqz p1, :cond_3

    .line 900
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    .line 903
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_8
    return v1

    :catchall_4
    move-exception p0

    :goto_9
    if-eqz v2, :cond_4

    .line 893
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v2

    .line 896
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_a
    if-eqz p1, :cond_5

    .line 900
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_b

    :catch_9
    move-exception p1

    .line 903
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 905
    :cond_5
    :goto_b
    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    .locals 2

    const-class v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 114
    :cond_0
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string v0, "Invalid property"

    .line 305
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 309
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 311
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 313
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 315
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw p0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    return-void
.end method

.method public final clearApplicationUserDataForPackages(ILjava/util/List;)Z
    .locals 8

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 547
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string p0, "clearApplicationUserDataForPackages - there is no package to clear"

    new-array p1, v1, [Ljava/lang/Object;

    .line 552
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    .line 556
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 558
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearUserData(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearApplicationUserData failed! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 562
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearApplicationUserData success! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 570
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "clear app user data for initialize DualDAR at DO. success"

    new-array p1, v1, [Ljava/lang/Object;

    .line 573
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "clearApplicationUserDataForPackages exception"

    new-array p2, v1, [Ljava/lang/Object;

    .line 566
    invoke-static {v0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 567
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0

    :cond_4
    :goto_2
    const-string p0, "clearApplicationUserDataForPackages failed! : (reason) DualDAR at DO user"

    new-array p1, v1, [Ljava/lang/Object;

    .line 548
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public clearSecret(I)Z
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "clearSecret failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    .line 779
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    const-string v2, "key"

    const-string v3, "evict"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 784
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "all"

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 785
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v5

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 787
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final clearUserData(Ljava/lang/String;I)Z
    .locals 4

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 586
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver-IA;)V

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 589
    sget-object v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    :cond_0
    const-string v1, "DualDARDaemonProxy"

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " try to clear application User Data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "DualDARDaemonProxy"

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t clear application user data for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 596
    :cond_1
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    :goto_0
    :try_start_1
    iget-boolean p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_2

    const-wide/16 v1, 0x64

    .line 599
    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v1, "DualDARDaemonProxy"

    const-string v2, "InterruptedException occur"

    new-array v3, p2, [Ljava/lang/Object;

    .line 601
    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 602
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 605
    :cond_2
    iget-boolean p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->success:Z

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    move p0, p2

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 607
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "DualDARDaemonProxy"

    .line 611
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    :goto_2
    return p2
.end method

.method public dumpSecret(ILjava/lang/String;)Z
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "dumpSecret failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "DualDARDaemonProxy"

    .line 794
    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSecret() - userId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filePath : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy.DUALDAR"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v2, "key"

    const-string v3, "key_dump"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 801
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 800
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 802
    invoke-virtual {p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v1, p1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 804
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final enforceCallingUser(I)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DualDARDaemonProxy"

    const-string v0, "enforceCallingUser"

    .line 832
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 836
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 v0, 0x1482

    if-ne p1, v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    if-ne p0, p1, :cond_1

    return-void

    .line 840
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z
    .locals 3

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "fetchDumpStateInfo()"

    .line 142
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    iget-object p1, p1, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    const-string v0, "/data/log/ddar_log.txt"

    invoke-static {p1, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    const-string p1, "fetchDumpStateInfo() successfullly read the log file"

    new-array p0, p0, [Ljava/lang/Object;

    .line 144
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 712
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p0, :cond_0

    const-string/jumbo p0, "startClientLibrary failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    .line 713
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_0
    :try_start_0
    const-string/jumbo v3, "vendor_lib"

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 718
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p0

    const-string p1, "getClientLibraryVersion() got response from executeSync"

    new-array v3, v1, [Ljava/lang/Object;

    .line 720
    invoke-static {v0, p1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 721
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getResponseCode()I

    move-result p1

    if-ltz p1, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 724
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClientLibrary failed! Error code: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    .line 727
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public final isNonClearablePackage(Ljava/lang/String;)Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSetPolicyFailureExceptional(Ljava/lang/String;)Z
    .locals 0

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isZippedLocaleOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isZippedLocaleOverlay(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public loadClientLibrary(ILjava/lang/String;)Z
    .locals 5

    .line 665
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "loadClientLibrary failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "DualDARDaemonProxy"

    .line 666
    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    const-string v3, "load"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 672
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p2, v4, p1

    .line 671
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 673
    invoke-virtual {p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v1, p1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 675
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final makeListUpWithClearableSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isNonClearablePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. Skip ddar policy for the pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final makeListUpWithNonClearableSystemPackages(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3. Skip ddar policy for the pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final makeListUpWithNonSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isNonClearablePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. Skip ddar policy for the pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 446
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDaemonConnected()V
    .locals 3

    :try_start_0
    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "onDaemonConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 812
    invoke-static {v0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 813
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 815
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 817
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDaemonDisconnected()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->enforceCallingUser(I)V

    :try_start_0
    const-string p1, "DualDARDaemonProxy"

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "SET_DUALDAR_DO_POLICY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "UNLOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "CLEAR_SECRET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "SET_DUALDAR_POLICY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "PUSH_SECRET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_1

    :sswitch_5
    const-string v0, "SET_EVICTION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "START_DAEMON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_7
    const-string v0, "GET_CLIENTLIB_VERSION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v0, "START_CLIENT_LIBRARY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "FETCH_DUMPSTATE_REQUEST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "STOP_DAEMON"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_b
    const-string v0, "LOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_c
    const-string v0, "CLEAR_APP_DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string v0, "CRYPTO_PATH"

    const-string v3, "dual_dar_response_message"

    const-string/jumbo v4, "user_id"

    const-string v5, "dual_dar_response"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    :try_start_1
    const-string p2, "FSLOG_FILE_INFO"

    .line 242
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 243
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z

    move-result p0

    .line 244
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 233
    :pswitch_1
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearSecret(I)Z

    move-result p2

    .line 235
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 236
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p2, "INNER_LAYER_SECRET"

    .line 224
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    .line 226
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->pushSecret(ILjava/util/List;Ljava/lang/String;)Z

    move-result p2

    .line 227
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 228
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 219
    :pswitch_3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 211
    :pswitch_4
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startClientLibrary(I)Z

    move-result p2

    .line 213
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 214
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    :pswitch_5
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->unloadClientLibrary(I)Z

    move-result p2

    .line 204
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 205
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :pswitch_6
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 193
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->loadClientLibrary(ILjava/lang/String;)Z

    move-result p2

    .line 195
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 183
    :pswitch_7
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 184
    iget-object p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->clearApplicationUserDataForPackages(ILjava/util/List;)Z

    move-result p2

    .line 185
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 186
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :pswitch_8
    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_2

    .line 177
    :pswitch_9
    invoke-virtual {p0, p3, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForManagedProfile(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_2

    .line 168
    :pswitch_a
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "EVICT"

    .line 169
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 170
    invoke-virtual {p0, p2, p3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setEviction(IZ)Z

    move-result p2

    .line 171
    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p2, :cond_1

    .line 172
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 163
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->stopConnectorThread()V

    const-string/jumbo p0, "persist.sys.knox.dualdard"

    .line 164
    invoke-static {p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 160
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startDualDARDaemon(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    return-object p1

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7832af06 -> :sswitch_c
        -0x74c33360 -> :sswitch_b
        -0x41169e9f -> :sswitch_a
        -0x39e32f38 -> :sswitch_9
        -0x398c663c -> :sswitch_8
        0x432f76a -> :sswitch_7
        0xd454d21 -> :sswitch_6
        0x132d527c -> :sswitch_5
        0x205d4775 -> :sswitch_4
        0x2b3c5855 -> :sswitch_3
        0x2dada502 -> :sswitch_2
        0x4d55a167 -> :sswitch_1
        0x69e2b563 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pushSecret(ILjava/util/List;Ljava/lang/String;)Z
    .locals 11

    .line 734
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v1, "DualDARDaemonProxy"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "pushSecret failed! Error: native interface not yet connected failed"

    new-array p1, v2, [Ljava/lang/Object;

    .line 735
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 739
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ddar/Secret;

    .line 741
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    iget-object v5, v0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {v4, p3, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo p0, "pushSecret failed ! decData is null"

    new-array p1, v2, [Ljava/lang/Object;

    .line 743
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 746
    :cond_2
    invoke-static {v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 747
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v7, "key"

    const-string v8, "install"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    aput-object v0, v9, v3

    const/4 v0, 0x2

    aput-object v5, v9, v0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 748
    invoke-static {v4}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 749
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "pushSecret failed !"

    new-array p1, v2, [Ljava/lang/Object;

    .line 750
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 754
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_3
    return v3
.end method

.method public final refreshNonClearablePackagesList(I)V
    .locals 2

    const-string v0, "dar"

    .line 649
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getBlockedClearablePackages(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 654
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 655
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mBlockedClearablePackages:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 658
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshNonClearablePackagesList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    invoke-static {v1, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setDualDARDOPolicy(II)Z
    .locals 10

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDualDARDOPolicy for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyToDirectories(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "dar"

    .line 385
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_8

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    const-string/jumbo v7, "pkg_clearable_system"

    .line 394
    invoke-virtual {v0, v7}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "pkg_not_system"

    .line 396
    invoke-virtual {v0, v8}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v9, "pkg_not_clearable_system"

    .line 398
    invoke-virtual {v0, v9}, Lcom/android/server/knox/dar/DarManagerService;->getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->refreshNonClearablePackagesList(I)V

    if-eqz v7, :cond_2

    .line 406
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p0, v7, v2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithClearableSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v5, "Clearable system package list is Empty."

    new-array v6, v1, [Ljava/lang/Object;

    .line 407
    invoke-static {v3, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    if-eqz v8, :cond_4

    .line 411
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 414
    :cond_3
    invoke-virtual {p0, v8, v2, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithNonSystemPackages(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string v5, "Not system package list is Empty."

    new-array v6, v1, [Ljava/lang/Object;

    .line 412
    invoke-static {v3, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    if-eqz v0, :cond_6

    .line 416
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 419
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->makeListUpWithNonClearableSystemPackages(Ljava/util/List;Ljava/util/List;)V

    goto :goto_5

    :cond_6
    :goto_4
    const-string v0, "Not clearable system package list is Empty."

    new-array v5, v1, [Ljava/lang/Object;

    .line 417
    invoke-static {v3, v0, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 422
    :goto_5
    invoke-virtual {p0, p1, p2, v4, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForPackages(IILjava/util/List;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string/jumbo p0, "setDualDARPolicyForPackages failed!"

    new-array p1, v1, [Ljava/lang/Object;

    .line 423
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 427
    :cond_7
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    move-result-object p0

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->saveSkippedPackages(Ljava/util/List;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 401
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    throw p0

    :cond_8
    :goto_6
    const-string/jumbo p0, "setDualDARDOPolicy res : true"

    new-array p1, v1, [Ljava/lang/Object;

    .line 431
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPOPolicy(II)Z
    .locals 1

    .line 368
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicy(II)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setDualDARPolicy failed!"

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    .line 370
    invoke-static {v0, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForDir(IILjava/lang/String;)Z
    .locals 0

    .line 634
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 635
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setDualDARPolicyDirRecursively failed! : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "DualDARDaemonProxy"

    invoke-static {p3, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForManagedDevice(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "user_id"

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CRYPTO_TYPE"

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 258
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARDOPolicy(II)Z

    move-result p1

    const-string v0, "dual_dar_response"

    .line 259
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_0

    const-string p1, "dual_dar_response_message"

    .line 261
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setDualDARPolicyForManagedProfile(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "user_id"

    .line 266
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CRYPTO_TYPE"

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "STORAGE_TYPE"

    .line 268
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x9

    .line 271
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPOPolicy(II)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "dual_dar_response"

    .line 275
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    .line 276
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz p0, :cond_2

    const-string p1, "dual_dar_response_message"

    .line 277
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setDualDARPolicyForPackages(IILjava/util/List;Ljava/util/List;)Z
    .locals 8

    .line 502
    sget-object v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    .line 503
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user_de/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "setDualDARPolicyDirRecursively failed! : "

    const-string v6, "DualDARDaemonProxy"

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 507
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isSetPolicyFailureExceptional(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDualDARPolicyDirRecursively failure exceptional! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 509
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v7

    :cond_1
    const/16 v2, 0x9

    .line 515
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 520
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mDualDARDOPolicyPackages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyForUser(II)Z
    .locals 5

    .line 482
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user_de/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p2

    const-string/jumbo v2, "setDualDARPolicyDir user failed! : "

    const-string v3, "DualDARDaemonProxy"

    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v4

    :cond_0
    const/16 p2, 0x9

    .line 489
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final setDualDARPolicyToDirectories(II)Z
    .locals 4

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForDir(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DualDARDaemonProxy"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to set the policy to shared folders..."

    new-array p1, v3, [Ljava/lang/Object;

    .line 468
    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 473
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicyForUser(II)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Failed to set the policy to data package folder..."

    new-array p1, v3, [Ljava/lang/Object;

    .line 474
    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_1
    return v3
.end method

.method public setEviction(IZ)Z
    .locals 1

    .line 359
    sget-object p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setEviction(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "setEviction failed!"

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    .line 361
    invoke-static {v0, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public startClientLibrary(I)Z
    .locals 6

    .line 696
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "startClientLibrary failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    .line 697
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 702
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 703
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v5

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 705
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final startConnectorThread()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v2, "startConnectorThread() "

    .line 126
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/knox/dar/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 128
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final startDualDARDaemon(Landroid/os/Bundle;)V
    .locals 6

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "dualdard"

    .line 284
    invoke-static {v1}, Lcom/android/server/knox/dar/DarUtil;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v4, "start newly dualdard daemon ! "

    new-array v5, v3, [Ljava/lang/Object;

    .line 285
    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v1, "persist.sys.knox.dualdard"

    .line 286
    invoke-static {v1, v2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V

    .line 290
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 291
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    if-nez v1, :cond_1

    const-string v1, "dual_dar_response"

    .line 292
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "dual_dar_response"

    .line 294
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->cancelTimer()V

    .line 297
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final startTimer()V
    .locals 4

    .line 339
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 340
    new-instance v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy$1;-><init>(Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stopConnectorThread()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "stopConnectorThread() "

    .line 133
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->setIsListening(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    :cond_0
    return-void
.end method

.method public unloadClientLibrary(I)Z
    .locals 6

    .line 681
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "unloadClientLibrary failed! Error: native interface not yet connected failed"

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "DualDARDaemonProxy"

    .line 682
    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "unload"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 688
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 690
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
