.class public Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;
.super Ljava/lang/Object;
.source "DualA2dpVolumeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mVolume:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->-$$Nest$fgetmSettingHelper(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setBTVolumeIndex(Ljava/lang/String;I)V

    return-void
.end method
