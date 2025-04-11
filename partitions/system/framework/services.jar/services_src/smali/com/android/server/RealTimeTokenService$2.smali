.class public Lcom/android/server/RealTimeTokenService$2;
.super Landroid/content/BroadcastReceiver;
.source "RealTimeTokenService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast NetWork received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RealTimeTokenService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    iget-object p2, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p2, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$misNetworkAvailable(Lcom/android/server/RealTimeTokenService;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->getActiveTokenNumber()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "Start RTTS Time Observer"

    .line 144
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$mgetSystemTime(Lcom/android/server/RealTimeTokenService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :try_start_1
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object p1

    if-nez p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p1}, Lcom/android/server/RealTimeTokenService;->makeTimerTask()V

    .line 149
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fputmTimerObserve(Lcom/android/server/RealTimeTokenService;Ljava/util/Timer;)V

    .line 150
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p0}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerTask(Lcom/android/server/RealTimeTokenService;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 153
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string p1, "Stop RTTS Time Observer"

    .line 156
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :try_start_3
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-static {p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/RealTimeTokenService;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 162
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$2;->this$0:Lcom/android/server/RealTimeTokenService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/RealTimeTokenService;->-$$Nest$fputmTimerObserve(Lcom/android/server/RealTimeTokenService;Ljava/util/Timer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
