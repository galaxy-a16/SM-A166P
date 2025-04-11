.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;
.super Ljava/lang/Object;
.source "SemMdnieManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

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
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 528
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetFP_FEATURE_SENSOR_IS_OPTICAL(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "optical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 529
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 531
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    .line 532
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    .line 537
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v1

    if-eq p1, v1, :cond_5

    .line 538
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayListener onDisplayChanged. mAlwaysOnDisplayEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mDisplayOn : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mDisplayState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mWorkBlueFilter : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmWorkBlueFilter(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mNightModeBlock : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeBlock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "DisplaySolution"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez p1, :cond_2

    const-string p1, "SemDisplaySolutionManager is null"

    .line 543
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_2

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isBlueLightFilterScheduledTime()Z

    move-result p1

    .line 548
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 v1, -0x2

    const-string v3, "blue_light_filter"

    invoke-static {v0, v3, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeBlock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 549
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fputmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V

    .line 552
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 553
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$msetNightDimOffMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;ZI)Z

    goto :goto_3

    .line 555
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
