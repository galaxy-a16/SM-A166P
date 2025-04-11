.class public Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
.super Ljava/lang/Object;
.source "SystemUiVisibilityPolicyController.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SystemUiVisibilityPolicyController"

.field public static mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mStateListeners:Ljava/util/ArrayList;

.field public mSystemUiVisibility:I

.field public mSystemUiVisibilityHandler:Landroid/os/Handler;

.field public mSystemUiVisibilityThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStateListeners(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateVisibility(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->handleUpdateVisibility(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyStateToBinder(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->notifyStateToBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySystemUiVisibilityToBinder(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->notifySystemUiVisibilityToBinder(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mquitHandlerThread(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->quitHandlerThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->DEBUG:Z

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    .line 39
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
    .locals 2

    const-class v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    .line 45
    :cond_0
    sget-object p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final createHandlerThreadLocked()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUiVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    .line 191
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    new-instance v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    .line 194
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;-><init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    .line 195
    new-instance v2, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$1;-><init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final enqueueMessageLocked(Landroid/os/Message;JZ)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->createHandlerThreadLocked()V

    if-eqz p4, :cond_0

    .line 220
    iget p4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p4}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->removeQueuedMessageLocked(I)V

    .line 222
    :cond_0
    iget-object p4, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    if-eqz p4, :cond_1

    .line 223
    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 224
    invoke-virtual {p0, p2, p3}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->updateThreadExpireTimeLocked(J)V

    :cond_1
    return-void
.end method

.method public final handleUpdateVisibility(I)V
    .locals 3

    .line 150
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    .line 155
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->onSystemUiVisibilityChanged(I)V

    goto :goto_0

    .line 157
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyStateToBinder(Landroid/os/IBinder;)V
    .locals 4

    .line 161
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    const-string v1, "handleNotifySystemUiVisibilityToBinder"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    .line 166
    iput v2, v1, Landroid/os/Message;->what:I

    .line 167
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifySystemUiVisibilityToBinder(Landroid/os/IBinder;I)Z
    .locals 3

    .line 174
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySystemUiVisibilityToBinder: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    .line 179
    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->onSystemUiVisibilityChanged(I)V

    .line 184
    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final quitHandlerThread()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    .line 211
    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    .line 214
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerSystemUiVisibilityListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, v2, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerListenerCallback : already registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v0

    return-void

    .line 63
    :cond_1
    new-instance v7, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;-><init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 66
    :try_start_1
    invoke-interface {p1, v7, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    :try_start_2
    sget-object p2, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListenerCallback : exception in linkToDeath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, v7, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->notifyStateToBinder(Landroid/os/IBinder;)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final removeQueuedMessageLocked(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final setState(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 134
    iget p3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    not-int p2, p2

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    goto :goto_0

    .line 136
    :cond_0
    iget p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    :goto_0
    return-void
.end method

.method public final systemUiVisibilityChanged()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 143
    iput v2, v1, Landroid/os/Message;->what:I

    .line 144
    iget v3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0x0

    .line 145
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public topAppWindowChanged(IZZ)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0, v0, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    const/4 p2, 0x2

    .line 107
    invoke-virtual {p0, p2, p2, p3}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    .line 110
    iget p3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    and-int/2addr p2, p3

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 113
    invoke-virtual {p0, p3, p3, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    .line 117
    :cond_2
    iget p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    if-eq p1, p2, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->systemUiVisibilityChanged()V

    :cond_3
    return-void
.end method

.method public transientChanged(Z)V
    .locals 2

    .line 123
    iget v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    const/4 v1, 0x4

    .line 124
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    .line 127
    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->systemUiVisibilityChanged()V

    :cond_0
    return-void
.end method

.method public unregisterSystemUiVisibilityListenerCallback(Landroid/os/IBinder;)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;

    if-eqz v3, :cond_0

    .line 80
    iget-object v4, v3, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 86
    sget-object p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerListenerCallback : cannot find the matched listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    .line 93
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 95
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateThreadExpireTimeLocked(J)V
    .locals 2

    .line 235
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibilityHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
