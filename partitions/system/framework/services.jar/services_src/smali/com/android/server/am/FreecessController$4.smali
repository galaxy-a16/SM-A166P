.class public Lcom/android/server/am/FreecessController$4;
.super Ljava/lang/Thread;
.source "FreecessController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;Ljava/lang/String;J)V
    .locals 0

    .line 3748
    iput-object p1, p0, Lcom/android/server/am/FreecessController$4;->this$0:Lcom/android/server/am/FreecessController;

    iput-wide p3, p0, Lcom/android/server/am/FreecessController$4;->val$startTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3752
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessController$4;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFrozenPidList(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3753
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/FreecessController$4;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFrozenPidList(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3754
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/FreecessController$4;->val$startTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_0

    .line 3758
    iget-object v2, p0, Lcom/android/server/am/FreecessController$4;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3762
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred while handleResetAllPreAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v0, "!@*** unFreezeAllPackages for watchdog : End thread for preaction unfreezing!!!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
