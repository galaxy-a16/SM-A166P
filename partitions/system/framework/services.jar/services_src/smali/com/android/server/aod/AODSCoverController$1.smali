.class public Lcom/android/server/aod/AODSCoverController$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AODSCoverController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODSCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fputmCoverAttached(Lcom/android/server/aod/AODSCoverController;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fputmCoverClosed(Lcom/android/server/aod/AODSCoverController;Z)V

    .line 52
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fgetmCoverAttached(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fgetmCoverClosed(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fputmCoverUIWorking(Lcom/android/server/aod/AODSCoverController;Z)V

    .line 53
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fgetmAODSettingHelper(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$fgetmCoverAttached(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne p1, v2, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {p0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$mregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {p0}, Lcom/android/server/aod/AODSCoverController;->-$$Nest$munregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V

    :cond_2
    :goto_1
    return-void
.end method
