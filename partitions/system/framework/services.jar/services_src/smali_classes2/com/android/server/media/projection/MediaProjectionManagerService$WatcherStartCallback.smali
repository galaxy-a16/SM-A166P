.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field public mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 1425
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    invoke-interface {v0, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStart(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify media projection has stopped"

    .line 1433
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
