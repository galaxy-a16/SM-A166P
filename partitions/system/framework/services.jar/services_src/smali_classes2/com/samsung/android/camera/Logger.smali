.class public Lcom/samsung/android/camera/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static mInstance:[Lcom/samsung/android/camera/Logger;


# instance fields
.field public mLogQueue:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/camera/Logger;

    sput-object v0, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    const-string p0, "CameraService_worker/Logger"

    const-string v0, "New Logger Instance"

    .line 48
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tDump of CameraServiceWorker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/samsung/android/camera/Logger;->getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/Logger;->dumpLogInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;
    .locals 4

    const-class v0, Lcom/samsung/android/camera/Logger;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 53
    sget-object v1, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/samsung/android/camera/Logger;

    invoke-direct {v3}, Lcom/samsung/android/camera/Logger;-><init>()V

    aput-object v3, v1, v2

    .line 55
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    .locals 4

    .line 60
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    invoke-static {p0}, Lcom/samsung/android/camera/Logger;->getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;

    move-result-object p0

    const-string v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 63
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/Logger;->addLogInternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized addLogInternal(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 70
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized dumpLogInternal(Ljava/io/PrintWriter;)V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
