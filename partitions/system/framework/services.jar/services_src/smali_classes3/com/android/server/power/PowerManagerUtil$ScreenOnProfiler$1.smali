.class public Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1092
    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->getFrameTimeFromDriver()J

    move-result-wide v0

    .line 1093
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$sfgetmFramePrevTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 1094
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$sfgetmFrameCheckCnt()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$sfputmFrameCheckCnt(I)V

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1095
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$fputmFrameEndTime(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;J)V

    const-string v0, "PowerManagerUtil"

    const-string v1, "Frame Timeout !!! "

    .line 1099
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteFrameEnd()V

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-static {v2, v0, v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->-$$Nest$fputmFrameEndTime(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;J)V

    .line 1103
    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;->this$0:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteFrameEnd()V

    :goto_0
    return-void
.end method
