.class public Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# instance fields
.field public final mDisplayProperties:[I

.field public mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public static bridge synthetic -$$Nest$mgetOriginalDisplaySizeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetForcedDisplayMertics(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSelectedDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSelectedDensity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->updateDesktopModeDensity()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    aget v0, p1, v0

    const/4 v3, 0x1

    aget p1, p1, v3

    const-string v3, "Tablet"

    invoke-direct {v2, v3, v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final getDesktopModeDefaultDensity()I
    .locals 3

    invoke-static {}, Lcom/android/server/desktopmode/Utils;->getFixedZoomProperty()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDesktopModeDefaultDensity(), dpi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0xa00

    if-ge p0, v0, :cond_1

    const/16 p0, 0xd5

    goto :goto_0

    :cond_1
    const/16 p0, 0x118

    :goto_0
    return p0
.end method

.method public final getDesktopModeDensity()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "standalone_mode_screen_zoom"

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    aput v3, p1, v2

    aput v0, p1, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to parse previous forced display size"

    invoke-static {v3, v4, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No previous forced display size. Use default size instead."

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "display_density_forced"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_2

    aput p0, p1, v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v3, "No previous forced display density. Use default density instead."

    invoke-static {p0, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    aget v2, p1, v2

    aget v1, p1, v1

    const-string v4, "Original"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    aget p1, p1, v0

    invoke-direct {p0, v3, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-object p0
.end method

.method public getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    :goto_0
    return-object p0
.end method

.method public final restoreOriginalSizeDensity(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity(I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return-void
.end method

.method public final setForcedDisplayMertics(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p1

    iget-object v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->restoreOriginalSizeDensity(I)V

    :goto_0
    return-void
.end method

.method public final setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    return-void
.end method

.method public final setSelectedDensity(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    if-eq v0, p1, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iput p1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mTabletDefaultDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDesktopModeDensity()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDensity()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setDensity(I)V

    return-void
.end method
