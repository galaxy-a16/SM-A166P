.class public Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "SecureAppNotifier.java"


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/SecureAppNotifier;Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;II)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    .line 108
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(Ljava/lang/String;II)V

    .line 109
    iput-object p2, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/android/server/remoteappmode/ListenerInfo;->binderDied()V

    .line 115
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-static {v0}, Lcom/android/server/remoteappmode/SecureAppNotifier;->-$$Nest$fgetmSecureAppChangedListeners(Lcom/android/server/remoteappmode/SecureAppNotifier;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-static {v1}, Lcom/android/server/remoteappmode/SecureAppNotifier;->-$$Nest$fgetmSecureAppChangedListeners(Lcom/android/server/remoteappmode/SecureAppNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
