.class public Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "RotationChangeNotifier.java"


# instance fields
.field public listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlistener(Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/remoteappmode/RotationChangeNotifier;Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;III)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    .line 66
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    .line 67
    iput-object p2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 72
    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    .line 73
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$fgetmRotationChangedListeners(Lcom/android/server/remoteappmode/RotationChangeNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$fgetmRotationChangedListeners(Lcom/android/server/remoteappmode/RotationChangeNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->unregisterRotationWatcher()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 78
    :try_start_2
    invoke-static {}, Lcom/android/server/remoteappmode/RotationChangeNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " binderDied: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 80
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public registerRotationWatcher(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    invoke-direct {v0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    .line 88
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->setRotationChangeListener(ILcom/samsung/android/remoteappmode/IRotationChangeListener;)V

    :cond_0
    return-void
.end method

.method public unregisterRotationWatcher()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez p0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->removeRotationChangeListenr()V

    return-void
.end method
