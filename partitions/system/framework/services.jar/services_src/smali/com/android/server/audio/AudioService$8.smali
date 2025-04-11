.class public Lcom/android/server/audio/AudioService$8;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/RecordingActivityMonitor$IRecordingEventChecker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRecordingEvent(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v0, 0x80

    invoke-static {p0, v0, p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToSoundEventReceiver(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    return-void
.end method
