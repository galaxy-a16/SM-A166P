.class public Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;
.super Ljava/lang/Object;
.source "ServiceWatcherImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile mBinder:Landroid/os/IBinder;

.field public final mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

.field public mRebinder:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public static synthetic $r8$lambda$cxPaSosjWbbxD__LV75jGECg31w(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->lambda$onBindingDied$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    return-void
.end method

.method private synthetic lambda$onBindingDied$0()V
    .locals 1

    .line 380
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 10

    .line 235
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    if-nez v0, :cond_1

    return-void

    .line 241
    :cond_1
    sget-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    const-string v1, "["

    const-string v2, "ServiceWatcher"

    if-eqz v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] binding to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    .line 247
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 248
    invoke-virtual {v3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v4, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    const v7, 0x40000005    # 2.0000012f

    iget-object v8, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 252
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    move-object v6, p0

    .line 250
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] unexpected bind failure - retrying later"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    .line 255
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v3, v3, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " bind failed"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public getBoundServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 372
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->setServiceBindingDiedTime(J)V

    .line 380
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has null binding"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceWatcher"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 304
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 311
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    if-eqz v0, :cond_2

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-interface {v0, p2, v3}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] error running operation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmNsHandler(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v0}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/location/nsflp/NSConnectionRecord;->setComponentName(Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->setPackageName(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->setConnectedTime(J)V

    .line 328
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->increaseConnectionCount()V

    .line 331
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 332
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 333
    iget-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p2

    const-string/jumbo v0, "record"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 341
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 343
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_1

    return-void

    .line 347
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] disconnected from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 350
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    if-eqz p1, :cond_2

    .line 351
    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;->onUnbind()V

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->setDisconnectedTime(J)V

    .line 356
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/nsflp/NSConnectionRecord;->increaseDisconnectionCount()V

    .line 358
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 359
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 360
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object v0

    const-string/jumbo v1, "record"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object v0

    sget-object v1, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_DISCONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 365
    :cond_3
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmNsHandler(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p1}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    move-result p1

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 3

    .line 285
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 288
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    invoke-interface {p1, p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 293
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] error running operation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-interface {p1, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    if-nez v0, :cond_1

    return-void

    .line 270
    :cond_1
    sget-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    if-eqz v0, :cond_2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] unbinding from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 275
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v1, v1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mRebinder:Ljava/lang/Runnable;

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
