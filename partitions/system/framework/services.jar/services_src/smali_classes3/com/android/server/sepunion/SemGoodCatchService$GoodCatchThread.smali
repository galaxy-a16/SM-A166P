.class public Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;
.super Ljava/lang/Thread;
.source "SemGoodCatchService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 440
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 445
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 447
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fputmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;)V

    .line 450
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    .line 451
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
