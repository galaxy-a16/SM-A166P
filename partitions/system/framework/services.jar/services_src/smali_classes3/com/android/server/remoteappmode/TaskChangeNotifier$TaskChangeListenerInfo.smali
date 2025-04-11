.class public Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "TaskChangeNotifier.java"


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/TaskChangeNotifier;Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;II)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    .line 303
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    .line 304
    iput-object p2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 309
    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    .line 312
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetmTaskChangeListeners(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$fgetlockObject(Lcom/android/server/remoteappmode/TaskChangeNotifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->-$$Nest$munregisterWatcherInternal(Lcom/android/server/remoteappmode/TaskChangeNotifier;)V

    .line 324
    iget-object v1, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->this$0:Lcom/android/server/remoteappmode/TaskChangeNotifier;

    invoke-virtual {v1}, Lcom/android/server/remoteappmode/TaskChangeNotifier;->deinitTaskWatcherThread()V

    .line 325
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 328
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/remoteappmode/TaskChangeNotifier$TaskChangeListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_1
    move-exception p0

    .line 318
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
