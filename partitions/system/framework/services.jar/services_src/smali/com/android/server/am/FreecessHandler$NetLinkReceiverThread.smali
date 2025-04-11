.class public Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# instance fields
.field public mNtPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 125
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->mNtPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 131
    iget v0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->mNtPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    move v2, v0

    :goto_0
    if-lez v1, :cond_1

    .line 135
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->initSendRecvMsgNetLink()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v3, 0x3e8

    .line 141
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 148
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->reportSocketResult(Z)V

    if-eqz v2, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v2, Lcom/android/server/am/FreecessHandler$FreecessThread;

    const-string v3, "FreecessHandler"

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/am/FreecessHandler$FreecessThread;-><init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    .line 151
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 153
    :goto_2
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->recvNetLinkAction()V

    goto :goto_2

    :cond_2
    return-void
.end method
