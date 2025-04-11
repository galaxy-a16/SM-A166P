.class public Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# static fields
.field public static CHECK_FRAME:Z = true

.field public static mDisplayType:I = 0x1

.field public static mFrameCheckCnt:I = 0x0

.field public static mFramePass:Z = false

.field public static mFramePrevTime:J = -0x1L

.field public static mHandler:Landroid/os/Handler; = null

.field public static mHandlerThread:Landroid/os/HandlerThread; = null

.field public static sInitialized:Z = false


# instance fields
.field public mDisplayDuration:I

.field public mDisplayEndTime:J

.field public mDisplayStartTime:J

.field public final mFrameCheckerRunnable:Ljava/lang/Runnable;

.field public mFrameDone:Z

.field public mFrameDuration:I

.field public mFrameEndTime:J

.field public mFrameStartTime:J

.field public mListenerDuration:I

.field public mListenerEndTime:J

.field public mListenerStartTime:J

.field public mOrder:I

.field public mSaved:Z

.field public mWakeUpDiff:I

.field public mWakeUpDuration:I

.field public mWakeUpEndTime:J

.field public mWakeUpStartTime:J

.field public mWakeUpTimeStr:Ljava/lang/String;

.field public mWmsDone:Z

.field public mWmsDuration:I

.field public mWmsEndTime:J

.field public mWmsStartTime:J


# direct methods
.method public static bridge synthetic -$$Nest$fputmFrameEndTime(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmFrameCheckCnt()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmFramePrevTime()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePrevTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmHandler()Landroid/os/Handler;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmFrameCheckCnt(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Ljava/lang/Runnable;

    .line 880
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PmsFrameChecker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 882
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 883
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 884
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .locals 2

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Ljava/lang/Runnable;

    .line 890
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 891
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    .line 892
    iget-object v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    .line 894
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 895
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 896
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 898
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 899
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsEndTime:J

    .line 900
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 901
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 903
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 904
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayEndTime:J

    .line 905
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 907
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 908
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerEndTime:J

    .line 909
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 911
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 912
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 913
    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 914
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 916
    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    return-void
.end method


# virtual methods
.method public calcDisplayDuration()V
    .locals 4

    .line 1010
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 1011
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    return-void
.end method

.method public calcListenerDuration()V
    .locals 4

    .line 1025
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    return-void
.end method

.method public calcWakeupDuration()V
    .locals 4

    .line 977
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    return-void
.end method

.method public calcWmsDuration()V
    .locals 4

    .line 993
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 994
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    return-void
.end method

.method public clearAll()V
    .locals 3

    const/4 v0, 0x0

    .line 920
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 921
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    const-string v1, ""

    .line 922
    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 924
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 925
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 926
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    .line 928
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 929
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsEndTime:J

    .line 930
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 931
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 933
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 934
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayEndTime:J

    .line 935
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 937
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 938
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerEndTime:J

    .line 939
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 941
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 942
    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    .line 943
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 944
    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    .line 945
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 947
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    return-void
.end method

.method public disableFrameCheck()V
    .locals 1

    const/4 p0, 0x0

    .line 1085
    sput-boolean p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    const-string p0, "PowerManagerUtil"

    const-string v0, "disable FrameCheck"

    .line 1086
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFrameTimeFromDriver()J
    .locals 3

    .line 1058
    sget p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    const/4 v0, 0x1

    const-string v1, "PowerManagerUtil"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1068
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display Type err = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "/sys/class/lcd/panel1/display_on"

    .line 1064
    invoke-static {p0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "/sys/class/lcd/panel/display_on"

    .line 1060
    invoke-static {p0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const-string/jumbo p0, "null : /sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on"

    .line 1073
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1076
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1078
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on data is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/16 v0, -0x1

    :goto_2
    return-wide v0
.end method

.method public isStarted()Z
    .locals 4

    .line 951
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public noteDisplayEnd()V
    .locals 2

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayEndTime:J

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcDisplayDuration()V

    return-void
.end method

.method public noteDisplayStart(I)V
    .locals 2

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 1000
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->getFrameTimeFromDriver()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePrevTime:J

    :cond_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    .line 1001
    sput-boolean p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    :cond_1
    return-void
.end method

.method public noteFrameEnd()V
    .locals 5

    .line 1042
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1043
    sput v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    const/4 v0, 0x1

    .line 1044
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 1045
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1046
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1048
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 1050
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd()V

    :cond_2
    return-void
.end method

.method public noteFrameStart(I)V
    .locals 4

    .line 1030
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    sput p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    .line 1037
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    .line 1038
    sget-object p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1031
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    const/4 p1, -0x1

    .line 1032
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    .line 1033
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd()V

    :cond_3
    return-void
.end method

.method public noteListenerEnd()V
    .locals 2

    .line 1020
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerEndTime:J

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcListenerDuration()V

    return-void
.end method

.method public noteListenerStart()V
    .locals 2

    .line 1016
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    return-void
.end method

.method public noteWakeupDiff(I)V
    .locals 0

    .line 957
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    return-void
.end method

.method public noteWakeupEnd()V
    .locals 2

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    .line 968
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcWakeupDuration()V

    .line 969
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 970
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerUtil"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public noteWakeupStart(I)V
    .locals 2

    .line 961
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 963
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    return-void
.end method

.method public noteWmsEnd()V
    .locals 2

    .line 986
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsEndTime:J

    const/4 v0, 0x1

    .line 987
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 988
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->calcWmsDuration()V

    .line 989
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd()V

    :cond_0
    return-void
.end method

.method public noteWmsStart()V
    .locals 2

    .line 982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 9

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 1111
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 1112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 1113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[%3d][%s][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    .line 1111
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1115
    :cond_0
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    .line 1116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 1117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[%3d][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    .line 1115
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
