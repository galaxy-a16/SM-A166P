.class public Lcom/android/server/sepunion/SemShortcutManagerService$2;
.super Landroid/os/Handler;
.source "SemShortcutManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$2;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e6

    const-string v2, "SemExecuteManagerService"

    if-eq v0, v1, :cond_0

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: default case msg.what = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "handleMessage: MSG_START_SCAN received. Start scanning."

    .line 506
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance p1, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$2$1;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService$2;)V

    .line 514
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
