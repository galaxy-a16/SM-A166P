.class public final synthetic Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/RadioManager$BandConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/aidl/TunerSession;->$r8$lambda$YFuOjGrsAqc2C8peqJRLW-Nc_jU(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;I)V

    return-void
.end method
