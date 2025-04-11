.class public Lcom/android/server/audio/PlaybackActivityMonitor$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x1388

    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic func()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$2;->func()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public func()Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "AS.PlaybackActivityMon"

    const-string v0, "There is no audio handler"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/PlaybackActivityMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xaca

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v1
.end method
