.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

.field public final synthetic f$1:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder$DeathRecipient;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->$r8$lambda$RTSLi7V-EFIY5CR1RRVVA05GRZc(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method
