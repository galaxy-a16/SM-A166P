.class public Lcom/android/server/enterprise/plm/LockDetectionTracker;
.super Ljava/lang/Object;
.source "LockDetectionTracker.java"


# static fields
.field public static volatile sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockDetectionEventCallbacks:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleLockDetection(Lcom/android/server/enterprise/plm/LockDetectionTracker;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/plm/LockDetectionTracker;->handleLockDetection(II)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;-><init>(Lcom/android/server/enterprise/plm/LockDetectionTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/plm/LockDetectionTracker;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/plm/LockDetectionTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final handleLockDetection(II)V
    .locals 3

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockDetection:"

    if-nez p1, :cond_0

    const-string/jumbo p1, "verify credential success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const-string/jumbo p1, "verify credential failure"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;

    const-string v2, "com.samsung.android.knox.intent.action.LOCK_STATE_CHANGE"

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;->onLockStateChange(Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public registerLockDetectionEventCallback(Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportLockDetection(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterLockDetectionEventCallback(Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/LockDetectionTracker$LockDetectionEventCallback;

    if-ne v0, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method
