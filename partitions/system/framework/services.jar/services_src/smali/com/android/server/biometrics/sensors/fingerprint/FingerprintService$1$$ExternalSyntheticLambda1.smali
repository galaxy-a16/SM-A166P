.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;->$r8$lambda$yKfbCedzzT4pQjxChTe49gl0cmA(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V

    return-void
.end method
