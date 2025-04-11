.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    .line 2343
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 2354
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-boolean p1, p1, Landroid/hardware/display/BrightnessInfo;->isAnimating:Z

    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmIsBrightnessAnimating(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 2357
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmIsBrightnessAnimating(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmPrevAclValue(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmAutoBrightnessMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BrightnessAnimating() ACL mPrevAclValue ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmPrevAclValue(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - mCurrentValue (4)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdnieScenarioControlService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmSemDisplaySolutionManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 2360
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmSemDisplaySolutionManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 2361
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmPrevAclValue(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
