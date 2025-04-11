.class public Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KmxService_KmxLogWrapper"

.field private static final TRACKING_ID:Ljava/lang/String; = "7J2-399-485457"

.field private static sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Application;Lcom/samsung/android/kmxservice/common/analytics/SALog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->lambda$sendLog$0(Landroid/app/Application;Lcom/samsung/android/kmxservice/common/analytics/SALog;)V

    return-void
.end method

.method private static getSEPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit16 v0, p0, 0x2710

    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 6

    const-string v0, "KmxService_KmxLogWrapper"

    const-string v1, "KmxService KmxLogWrapper init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ls9/a;

    invoke-direct {v0}, Ls9/a;-><init>()V

    const-string v1, "7J2-399-485457"

    iput-object v1, v0, Ls9/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->getSEPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ls9/a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls9/a;->b:Z

    sget-object v2, Ls9/d;->b:Ls9/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v2, Ls9/d;->a:Lt9/b;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_7

    if-eqz v2, :cond_3

    iget-object v2, v2, Ls9/d;->a:Lt9/b;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Ls9/d;->b:Ls9/d;

    iget-object v4, v4, Ls9/d;->a:Lt9/b;

    iget-object v4, v4, Lt9/b;->b:Ls9/a;

    invoke-static {v2}, Lva/n;->C(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    if-eqz v2, :cond_11

    :cond_7
    const-class v2, Ls9/d;

    monitor-enter v2

    :try_start_0
    sget-object v4, Ls9/d;->b:Ls9/d;

    if-eqz v4, :cond_9

    iget-object v4, v4, Ls9/d;->a:Lt9/b;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    move v4, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v4, v1

    :goto_7
    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ls9/d;->b:Ls9/d;

    iget-object v5, v5, Ls9/d;->a:Lt9/b;

    iget-object v5, v5, Lt9/b;->b:Ls9/a;

    invoke-static {v4}, Lva/n;->C(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    if-nez v5, :cond_c

    move v4, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v4, v3

    :goto_9
    if-eqz v4, :cond_d

    sget-object v4, Ll9/b;->f:Ls9/d;

    sput-object v4, Ls9/d;->b:Ls9/d;

    :cond_d
    sget-object v4, Ls9/d;->b:Ls9/d;

    if-eqz v4, :cond_f

    iget-object v4, v4, Ls9/d;->a:Lt9/b;

    if-nez v4, :cond_e

    goto :goto_a

    :cond_e
    move v1, v3

    goto :goto_a

    :catchall_0
    move-exception p0

    goto :goto_b

    :cond_f
    :goto_a
    if-eqz v1, :cond_10

    new-instance v1, Ls9/d;

    invoke-direct {v1, p0, v0}, Ls9/d;-><init>(Landroid/app/Application;Ls9/a;)V

    sput-object v1, Ls9/d;->b:Ls9/d;

    sput-object v1, Ll9/b;->f:Ls9/d;

    :cond_10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_11
    invoke-static {}, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->getInstance()Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    return-void

    :goto_b
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$sendLog$0(Landroid/app/Application;Lcom/samsung/android/kmxservice/common/analytics/SALog;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    const-string v1, " sSAInstance  is null "

    const-string v2, "KmxService_KmxLogWrapper"

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->init(Landroid/app/Application;)V

    :cond_0
    if-nez p1, :cond_1

    const-string p0, " SALog  is null "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getCustomDimen()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p0, "custom dimension is passed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getCustomDimen()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->isBackground()Z

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;->getValue()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;->getInstance()Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;

    move-result-object v0

    new-instance v1, Ld/p0;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p1, p0}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/KmxServiceHandlerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
