.class public Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;
.super Ljava/lang/Object;
.source "RemoteAppModeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mPid:I

.field public final mUid:I

.field public final mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/hardware/display/VirtualDisplay;Landroid/os/IBinder;II)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 1083
    iput-object p3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mBinder:Landroid/os/IBinder;

    .line 1084
    iput p4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mPid:I

    .line 1085
    iput p5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1090
    invoke-static {}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualDisplayInfo - binderDied"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1094
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 1096
    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmLock(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmVirtualDisplayMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$mcheckRemoteAppModeEnabled(Lcom/android/server/remoteappmode/RemoteAppModeService;)V

    .line 1100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 1104
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method
