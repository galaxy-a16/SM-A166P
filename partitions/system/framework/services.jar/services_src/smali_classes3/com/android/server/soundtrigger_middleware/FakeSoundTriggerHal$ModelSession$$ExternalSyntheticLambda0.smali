.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->$r8$lambda$7QQc9ki95x8zS0WC7UG48drebZ8(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method
