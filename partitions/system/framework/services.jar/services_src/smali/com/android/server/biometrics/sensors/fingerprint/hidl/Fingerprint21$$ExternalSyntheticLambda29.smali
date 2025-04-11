.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/fingerprint/PointerContext;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda29;->f$0:Landroid/hardware/biometrics/fingerprint/PointerContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda29;->f$0:Landroid/hardware/biometrics/fingerprint/PointerContext;

    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->$r8$lambda$IVSBGw5Rjoqr8eKOEZbhnc0VxSY(Landroid/hardware/biometrics/fingerprint/PointerContext;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
