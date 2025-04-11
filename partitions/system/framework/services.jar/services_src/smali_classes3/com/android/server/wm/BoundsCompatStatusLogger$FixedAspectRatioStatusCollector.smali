.class public Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatStatusLogger$StatusCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;-><init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V

    return-void
.end method


# virtual methods
.method public collectIfNeededLocked(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-static {v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/BoundsCompatStatusLogger;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getMergedChange(ILjava/lang/String;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3fe38e39

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string p1, "519402"

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x3faaaaab

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string p1, "519403"

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string v1, "519402"

    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mcreateSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$FixedAspectRatioStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string v0, "519403"

    invoke-static {p0, v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mcreateSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
