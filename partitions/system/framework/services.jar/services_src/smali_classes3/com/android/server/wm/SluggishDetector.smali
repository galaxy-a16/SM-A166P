.class public abstract Lcom/android/server/wm/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# static fields
.field public static Before_Store_time:J = -0x1L

.field public static ENABLE:Z = true

.field public static final TAG:Ljava/lang/String; = "SluggishDetector"

.field public static mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetBefore_Store_time()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputBefore_Store_time(J)V
    .locals 0

    .line 0
    sput-wide p0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 72
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    goto :goto_0

    :cond_0
    const-string v1, " [SD] kperfmon nonexist"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    .line 117
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$sminit()V

    .line 129
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$sminit()V

    .line 134
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static setLockContentionInfo(SLjava/lang/String;)V
    .locals 1

    .line 1461
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    .line 1469
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->-$$Nest$smsendDataToHandler(ILjava/lang/Object;)V

    const/16 v0, 0xe

    .line 1473
    invoke-static {v0, p0, p1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 1475
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
