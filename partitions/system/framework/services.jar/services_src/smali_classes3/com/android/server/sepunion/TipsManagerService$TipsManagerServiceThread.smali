.class public Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;
.super Ljava/lang/Thread;
.source "TipsManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const-string p1, "TipsManagerService"

    .line 529
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 535
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 537
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    new-instance v2, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)V

    .line 541
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    .line 542
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
