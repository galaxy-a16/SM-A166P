.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->$r8$lambda$ohsYmWF6yBbudkd6mHfux0Djfjg(Lcom/android/server/input/BatteryController;Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
