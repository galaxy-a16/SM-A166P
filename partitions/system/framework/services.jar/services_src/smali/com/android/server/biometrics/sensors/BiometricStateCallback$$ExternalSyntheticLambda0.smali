.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder;

    check-cast p1, Landroid/hardware/biometrics/IBiometricStateListener;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->$r8$lambda$dJrF-4fBy2sxeVEW3xWbJaDUv_w(Landroid/os/IBinder;Landroid/hardware/biometrics/IBiometricStateListener;)Z

    move-result p0

    return p0
.end method
