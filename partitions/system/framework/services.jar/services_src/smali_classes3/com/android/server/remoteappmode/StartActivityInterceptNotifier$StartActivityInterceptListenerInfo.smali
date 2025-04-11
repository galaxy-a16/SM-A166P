.class public Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "StartActivityInterceptNotifier.java"


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->this$0:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->this$0:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->-$$Nest$fgetmStartActivityInterceptListeners(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->this$0:Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;->-$$Nest$fgetmStartActivityInterceptListeners(Lcom/android/server/remoteappmode/StartActivityInterceptNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/remoteappmode/StartActivityInterceptNotifier$StartActivityInterceptListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
