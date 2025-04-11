.class public Lcom/android/server/RealTimeTokenService$4;
.super Landroid/content/BroadcastReceiver;
.source "RealTimeTokenService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p2, "RealTimeTokenService"

    const-string v0, "Boot Completed Receiver"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$mgetSystemTime(Lcom/android/server/RealTimeTokenService;)V

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetcurrentTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {v2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetelapsedTime(Lcom/android/server/RealTimeTokenService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fputbootingTime(Lcom/android/server/RealTimeTokenService;J)V

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p2}, Lcom/android/server/RealTimeTokenService;->initTokenStorage()I

    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    move-result p1

    if-lez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fputmTimerObserve(Lcom/android/server/RealTimeTokenService;Ljava/util/Timer;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->makeTimerTask()V

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fputmTimerObserve(Lcom/android/server/RealTimeTokenService;Ljava/util/Timer;)V

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$4;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p0}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerTask(Lcom/android/server/RealTimeTokenService;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
