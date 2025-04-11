.class public Lcom/android/server/biometrics/sensors/SensorOverlays$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "SensorOverlays.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->this$0:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCanceled()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    return-void
.end method
