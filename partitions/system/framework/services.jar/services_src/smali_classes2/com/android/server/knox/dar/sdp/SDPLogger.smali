.class public final Lcom/android/server/knox/dar/sdp/SDPLogger;
.super Ljava/lang/Object;
.source "SDPLogger.java"


# static fields
.field public static final DEBUG:Z

.field public static mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;


# direct methods
.method public static bridge synthetic -$$Nest$smLogD(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smLogE(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->LogE(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    new-instance v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger-IA;)V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SDPLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SDPLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static enqMessage(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smgetLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smgetStateLocked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$smsetStateLocked(I)V

    new-instance v2, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;-><init>(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger-IA;)V

    sput-object v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    if-eqz v1, :cond_1

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
