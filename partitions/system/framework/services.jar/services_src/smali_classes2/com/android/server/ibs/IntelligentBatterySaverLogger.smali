.class public Lcom/android/server/ibs/IntelligentBatterySaverLogger;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverLogger.java"


# static fields
.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;


# instance fields
.field public mIBSLog:Landroid/util/LocalLog;

.field public mIsUsed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    .locals 2

    const-class v0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;-><init>()V

    sput-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    :cond_0
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dumpIBSHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "IntelligentBatterySaverLogger history Log:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method
