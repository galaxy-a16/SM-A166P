.class public Lcom/android/server/sepunion/EngmodeService$1;
.super Ljava/util/TimerTask;
.source "EngmodeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "engmode_service"

    const-string v0, "Time thread already running, pass"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmTimeThread(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)V

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
