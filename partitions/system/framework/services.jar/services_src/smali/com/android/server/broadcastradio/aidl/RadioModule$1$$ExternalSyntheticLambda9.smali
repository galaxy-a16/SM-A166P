.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramSelector;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramSelector;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/radio/ProgramSelector;

    iput p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;->f$0:Landroid/hardware/radio/ProgramSelector;

    iget p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda9;->f$1:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->$r8$lambda$akAxWKlmCYxMS3PIPGrYZ7eALDY(Landroid/hardware/radio/ProgramSelector;ILandroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method
