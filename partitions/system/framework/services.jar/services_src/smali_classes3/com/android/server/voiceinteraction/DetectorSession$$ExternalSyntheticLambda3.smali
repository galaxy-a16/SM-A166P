.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Landroid/os/PersistableBundle;

.field public final synthetic f$2:Landroid/os/SharedMemory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/SharedMemory;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/SharedMemory;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->$r8$lambda$cnuiq2naXl1PwY8fh-1Hzw9c904(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/ISandboxedDetectionService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
