.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->$r8$lambda$ziSOCkltlH7VEkZIMYSx7mcZllU(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method
