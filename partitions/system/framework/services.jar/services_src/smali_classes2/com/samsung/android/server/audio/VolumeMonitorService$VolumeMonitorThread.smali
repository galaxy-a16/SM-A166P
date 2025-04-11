.class public Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
.super Ljava/lang/Thread;
.source "VolumeMonitorService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    const-string p1, "VolumeMonitor"

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    new-instance v2, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler-IA;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fputmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;Landroid/os/Handler;)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
