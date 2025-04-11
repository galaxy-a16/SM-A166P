.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mEngineId:I

.field public mIsValid:Z

.field public mWeakListener:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$iBSbJWQLwq3JYmaZ6ZT8RTUv7MI(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->lambda$dispose$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$revdvajFGxo6ogu3_sk4yRoajK0(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->lambda$new$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    iput p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$dispose$1(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "SdpManagerImpl"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to unlink death listener"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p0, "Listener might be already finalized..."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SdpManagerImpl"

    const-string v1, "Failed to link death listener..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->releaseReferences()V

    :goto_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->dispose()V

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mhandleEmptyListenerRoll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;->disenroll(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->releaseReferences()V

    return-void
.end method

.method public get()Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    return-object p0
.end method

.method public getParent()Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmListenerMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mEngineId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$ListenerRoll;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    return p0
.end method

.method public releaseReferences()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->mIsValid:Z

    return-void
.end method
