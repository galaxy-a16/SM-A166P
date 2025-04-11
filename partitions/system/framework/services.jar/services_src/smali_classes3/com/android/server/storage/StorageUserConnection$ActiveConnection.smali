.class public final Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mOutstandingOps:Ljava/util/ArrayList;

.field public mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public final synthetic this$0:Lcom/android/server/storage/StorageUserConnection;


# direct methods
.method public static synthetic $r8$lambda$93erWb6a5RU3PZo83TSaFNbZoko(Ljava/lang/String;Ljava/lang/String;JLandroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$freeCache$5(Ljava/lang/String;Ljava/lang/String;JLandroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FEark3qKXdf7J4q76s47jPohPig(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$waitForAsyncVoid$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFaAMiOQFU_9UDxvKbObVc1iuUY(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$notifyVolumeStateChanged$4(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MwZW71fBrgUNX7y5zldDkR2zb0w(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$waitForAsync$1(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xz9QOEglOmVVZcGfx3M8vPnTEXU(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$startSession$2(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qD_90IHCAI3avzTR3bMkHqqK1cA(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$endSession$3(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t54DbLzgfkkBR4Ra6mYNtOW2Up4(Ljava/lang/String;IIILandroid/service/storage/IExternalStorageService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$notifyAnrDelayStarted$6(Ljava/lang/String;IIILandroid/service/storage/IExternalStorageService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/storage/StorageUserConnection;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection;Lcom/android/server/storage/StorageUserConnection$ActiveConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;)V

    return-void
.end method

.method public static synthetic lambda$endSession$3(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic lambda$freeCache$5(Ljava/lang/String;Ljava/lang/String;JLandroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 6

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p5

    .line 433
    invoke-interface/range {v0 .. v5}, Landroid/service/storage/IExternalStorageService;->freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic lambda$notifyAnrDelayStarted$6(Ljava/lang/String;IIILandroid/service/storage/IExternalStorageService;)V
    .locals 0

    .line 444
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/service/storage/IExternalStorageService;->notifyAnrDelayStarted(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "StorageUserConnection"

    const-string p2, "Failed to notify ANR delay started"

    .line 446
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$notifyVolumeStateChanged$4(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 422
    invoke-interface {p2, p0, p1, p3}, Landroid/service/storage/IExternalStorageService;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic lambda$startSession$2(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 7

    .line 394
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$Session;->upperPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$Session;->lowerPath:Ljava/lang/String;

    move-object v0, p2

    move-object v3, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/service/storage/IExternalStorageService;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic lambda$waitForAsync$1(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 377
    :try_start_0
    invoke-interface {p0, p3, p1}, Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;->run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-object p2
.end method

.method private synthetic lambda$waitForAsyncVoid$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 0

    .line 360
    invoke-virtual {p0, p2, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method


# virtual methods
.method public final asyncBestEffort(Ljava/util/function/Consumer;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    if-nez p0, :cond_0

    const-string p0, "StorageUserConnection"

    const-string p1, "Dropping async request service is not bound"

    .line 344
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->getNow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/storage/IExternalStorageService;

    if-nez p0, :cond_1

    const-string p0, "StorageUserConnection"

    const-string p1, "Dropping async request service is not connected"

    .line 350
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v0

    return-void

    .line 354
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "StorageUserConnection"

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing connection for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    .line 317
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 318
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 321
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    .line 325
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    goto :goto_0

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 332
    :try_start_1
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmContext(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "StorageUserConnection"

    const-string v1, "Failed to unbind service"

    .line 336
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 328
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final connectIfNeeded()Ljava/util/concurrent/CompletableFuture;
    .locals 10

    .line 462
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmSessionController(Lcom/android/server/storage/StorageUserConnection;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/storage/StorageSessionController;->getExternalStorageServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_0

    .line 470
    monitor-exit v1

    return-object v2

    .line 472
    :cond_0
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 473
    new-instance v3, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    iput-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const-string v3, "StorageUserConnection"

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmContext(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v7, 0x41

    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmHandlerThread(Lcom/android/server/storage/StorageUserConnection;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v0

    .line 526
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 522
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StorageUserConnection"

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bound to the ExternalStorageService for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 529
    monitor-exit v1

    return-object v2

    .line 531
    :cond_1
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to the ExternalStorageService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 465
    :cond_2
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ready to bind to the ExternalStorageService for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-static {p0}, Lcom/android/server/storage/StorageUserConnection;->-$$Nest$fgetmUserId(Lcom/android/server/storage/StorageUserConnection;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endSession(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .locals 3

    .line 410
    :try_start_0
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;)V

    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 413
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to end session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public freeCache(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 432
    :try_start_0
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 435
    new-instance p1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to free "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes for volumeUuid : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public notifyAnrDelayStarted(Ljava/lang/String;III)V
    .locals 1

    .line 442
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->asyncBestEffort(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 421
    :try_start_0
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 424
    new-instance p1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify volume state changed for vol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const-string p0, "android.service.storage.extra.error"

    .line 452
    const-class v0, Landroid/os/ParcelableException;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelableException;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 456
    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public startSession(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 394
    :try_start_0
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 398
    :try_start_2
    new-instance v0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 405
    :catch_2
    throw p0
.end method

.method public final waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;Ljava/util/ArrayList;J)Ljava/lang/Object;
    .locals 2

    .line 369
    invoke-virtual {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->connectIfNeeded()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 373
    :try_start_1
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    :try_start_2
    new-instance v1, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 383
    invoke-virtual {p1, p5, p6, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 385
    iget-object p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 386
    :try_start_3
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 374
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 385
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 386
    :try_start_6
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 387
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 388
    throw p1

    :catchall_3
    move-exception p1

    .line 387
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public final waitForAsyncVoid(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    .locals 7

    .line 359
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 360
    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v3}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v2, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 362
    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    const-wide/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;Ljava/util/ArrayList;J)Ljava/lang/Object;

    return-void
.end method
