.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

.field public final synthetic f$1:Landroid/media/soundtrigger/SoundModel;

.field public final synthetic f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Landroid/media/soundtrigger/SoundModel;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$1:Landroid/media/soundtrigger/SoundModel;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->$r8$lambda$TjQ2otGr4IoNEo73GNpulKqQmaU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method
