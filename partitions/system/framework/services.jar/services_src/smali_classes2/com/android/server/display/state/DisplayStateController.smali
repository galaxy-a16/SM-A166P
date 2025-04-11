.class public Lcom/android/server/display/state/DisplayStateController;
.super Ljava/lang/Object;
.source "DisplayStateController.java"


# instance fields
.field public final mDisplayId:I

.field public mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mPerformScreenOffTransition:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    iput p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    return-void
.end method


# virtual methods
.method public dumpsys(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DisplayStateController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPerformScreenOffTransition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->dumpLocal(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public setPerformScreenOffTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return-void
.end method

.method public shouldPerformScreenOffTransition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return p0
.end method

.method public updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)I
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->updateProximityState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V

    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    iget-object p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    iget p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayId:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    invoke-static {v3}, Landroid/view/Display;->isOffState(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne p1, v2, :cond_6

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    :cond_6
    return v3
.end method
