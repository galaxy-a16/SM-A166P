.class public Lcom/samsung/android/kmxservice/KmxServiceApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|KmxServiceApplication"

.field private static sInstance:Lcom/samsung/android/kmxservice/KmxServiceApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/KmxServiceApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/KmxServiceApplication;->lambda$onCreate$0()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/KmxServiceApplication;
    .locals 3

    const-class v0, Lcom/samsung/android/kmxservice/KmxServiceApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/KmxServiceApplication;->sInstance:Lcom/samsung/android/kmxservice/KmxServiceApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid KmxServiceApplication"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    const-string v0, "KMX|KmxServiceApplication"

    const-string v1, "KmxLogWrapper init is being called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->init(Landroid/app/Application;)V

    return-void
.end method

.method private static setKmxServiceApplicationInstance(Lcom/samsung/android/kmxservice/KmxServiceApplication;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/kmxservice/KmxServiceApplication;->sInstance:Lcom/samsung/android/kmxservice/KmxServiceApplication;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/tool/Logger;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/KmxServiceApplication;->setKmxServiceApplicationInstance(Lcom/samsung/android/kmxservice/KmxServiceApplication;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;->getInstance()Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;

    move-result-object v0

    new-instance v1, Lt/a;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
