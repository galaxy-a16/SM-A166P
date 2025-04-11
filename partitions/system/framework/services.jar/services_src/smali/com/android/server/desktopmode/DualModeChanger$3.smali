.class public Lcom/android/server/desktopmode/DualModeChanger$3;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {v0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationComplete()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fputmLoadingScreenAnimationComplete(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    .line 358
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mscheduleStopLoadingScreenIfPossible(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    :cond_1
    return-void
.end method
