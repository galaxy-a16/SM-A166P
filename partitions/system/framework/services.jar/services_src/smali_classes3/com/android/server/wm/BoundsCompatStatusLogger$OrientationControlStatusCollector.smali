.class public Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatStatusLogger$StatusCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;-><init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V

    return-void
.end method


# virtual methods
.method public collectIfNeededLocked(ILjava/lang/String;)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-static {v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/BoundsCompatStatusLogger;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OrientationController;->getPolicy(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string p1, "LVPA01"

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string p1, "LVPA02"

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeLocked()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string v1, "LVPA01"

    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mcreateSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$OrientationControlStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const-string v0, "LVPA02"

    invoke-static {p0, v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mcreateSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
