.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    check-cast p1, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->$r8$lambda$mamYIvpKkO3MeftNIQ0KNUp5_v8(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method
