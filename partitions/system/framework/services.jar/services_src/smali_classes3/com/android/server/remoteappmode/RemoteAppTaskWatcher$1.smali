.class public Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;
.super Landroid/os/Handler;
.source "RemoteAppTaskWatcher.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;Landroid/os/Looper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ****** RemoteAppTaskWatcher: Message Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Task ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteAppTaskWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p0, " ****** Error in received message "

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {p1}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 86
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->notifyTaskStackUpdated()V

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 77
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 79
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {v1}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 80
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->notifyTaskMoved(II)V

    goto :goto_0

    .line 67
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 69
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->notifyTaskRemoved(I)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 58
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher$1;->this$0:Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/remoteappmode/RemoteAppTaskWatcher;)Lcom/android/server/remoteappmode/TaskChangeNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->notifyTaskPlayed(I)V

    :cond_4
    :goto_0
    return-void
.end method
