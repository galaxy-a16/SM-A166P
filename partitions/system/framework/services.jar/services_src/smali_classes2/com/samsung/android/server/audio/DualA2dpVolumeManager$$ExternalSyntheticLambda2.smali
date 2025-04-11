.class public final synthetic Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iput p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->$r8$lambda$ZqztcFBAfOtJlDAkpZFUBhmcHXg(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V

    return-void
.end method
