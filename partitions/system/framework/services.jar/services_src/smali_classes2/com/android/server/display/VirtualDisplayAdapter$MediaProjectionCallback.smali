.class public final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "VirtualDisplayAdapter.java"


# instance fields
.field public mAppToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 817
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onCapturedContentResize(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCapturedContentVisibilityChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    invoke-static {v1, p0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 824
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
