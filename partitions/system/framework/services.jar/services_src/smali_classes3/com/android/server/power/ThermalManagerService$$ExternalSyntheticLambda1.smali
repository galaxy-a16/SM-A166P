.class public final synthetic Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService;

.field public final synthetic f$1:Landroid/os/IThermalStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ThermalManagerService;

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/os/IThermalStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/os/IThermalStatusListener;

    invoke-static {v0, p0}, Lcom/android/server/power/ThermalManagerService;->$r8$lambda$i0caJqLDRcb5Ndj4BUrm9sOQYto(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    return-void
.end method
