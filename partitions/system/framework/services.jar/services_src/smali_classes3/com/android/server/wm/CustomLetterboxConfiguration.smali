.class public Lcom/android/server/wm/CustomLetterboxConfiguration;
.super Ljava/lang/Object;
.source "CustomLetterboxConfiguration.java"


# static fields
.field public static final DEFAULT_ENHANCED_MODE:I

.field public static final DEFAULT_MODE:I


# instance fields
.field public mAllowFreezeWallpaper:Z

.field public mEnhancedControllers:Landroid/util/SparseArray;

.field public mHasLiveWallpaper:Z

.field public mLetterboxActivityCornersRadius:I

.field public final mLetterboxBackgroundColor:Landroid/graphics/Color;

.field public mLetterboxBackgroundWallpaperBlurRadius:I

.field public final mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mMode:I

.field public mNightMode:I

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$SOQrwYjlftWKLPHPqw0kzwYIKiY(Lcom/android/server/wm/CustomLetterboxConfiguration;ZLcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CustomLetterboxConfiguration;->lambda$onConfigurationChanged$0(Lcom/android/server/wm/CustomLetterboxConfiguration;ZLcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$moFutKkfYxvI8Arfh9G_4_Jp4-4(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->lambda$updateWallpaperType$2(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWmService(Lcom/android/server/wm/CustomLetterboxConfiguration;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateWallpaperType(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->updateWallpaperType()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 85
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 86
    :goto_0
    sput v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_ENHANCED_MODE:I

    .line 88
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    sput v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    iput v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/high16 v0, -0x1000000

    .line 96
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 274
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxConfiguration-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;-><init>()V

    return-void
.end method

.method public static adjustLetterboxes(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 382
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    const-string v0, "-setAllowFreezeWallpaper"

    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 418
    :try_start_0
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :catch_0
    iget-object p1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 422
    :try_start_1
    iput-boolean v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mAllowFreezeWallpaper:Z

    .line 423
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", AllowFreezeWallpaper="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p0

    .line 423
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    const-string v0, "-setCustomLetterboxMode"

    .line 428
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 431
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const-string p0, "Too many arguments."

    .line 432
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 435
    :cond_2
    sget v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    .line 437
    :try_start_3
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 440
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Mode="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setMode(I)V

    return v1
.end method

.method public static getCustomLetterboxActivityCornersRadius(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 189
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCustomLetterboxBackgroundColor(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Color;
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    return-object p0
.end method

.method public static getCustomLetterboxBackgroundType(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 181
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 182
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getCustomLetterboxBackgroundWallpaperBlurRadius(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 210
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCustomLetterboxBackgroundWallpaperDarkScrimAlpha(Lcom/android/server/wm/ActivityRecord;)F
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;->sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    return-object v0
.end method

.method public static getLetterboxBackgroundWallpaperBlurRadius()I
    .locals 1

    .line 221
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return v0
.end method

.method public static hasLetterboxSurface(Lcom/android/server/wm/DisplayContent;)Z
    .locals 5

    .line 234
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 235
    iget v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 241
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 245
    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    .line 245
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldShowLetterboxLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v3
.end method

.method public static hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 136
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    .line 137
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAllowFreezeWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 176
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mAllowFreezeWallpaper:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 177
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAllowWallpaperBelowLetterbox()Z
    .locals 2

    .line 377
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->isCompatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 165
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->supportsCustomLetterbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->isAboveEmbeddedTaskFragment()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabledEnhanced(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEnhancedControllerToken(Landroid/os/IBinder;)Z
    .locals 0

    .line 365
    instance-of p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$EnhancedControllerToken;

    return p0
.end method

.method public static isWaitingForEnhancedEnabled(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1

    .line 359
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isWaitingForEnhancedEnabledLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/android/server/wm/CustomLetterboxConfiguration;ZLcom/android/server/wm/DisplayContent;)V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;ZZ)V

    return-void
.end method

.method private synthetic lambda$updateWallpaperType$2(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ENABLED_BLACK_LETTERBOX"

    return-object p0

    :pswitch_1
    const-string p0, "ENABLED_ENHANCED_HIDING_WALLPAPER"

    return-object p0

    :pswitch_2
    const-string p0, "ENABLED_ENHANCED_WITHOUT_ROUNDED_CORNER"

    return-object p0

    :pswitch_3
    const-string p0, "ENABLED_WITHOUT_BLUR_AND_ROUNDED_CORNER"

    return-object p0

    :pswitch_4
    const-string p0, "ENABLED_WITHOUT_ROUNDED_CORNER"

    return-object p0

    :pswitch_5
    const-string p0, "ENABLED_WITHOUT_BLUR"

    return-object p0

    :pswitch_6
    const-string p0, "ENABLED_ENHANCED"

    return-object p0

    :pswitch_7
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_8
    const-string p0, "DISABLED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onConfigurationChanged(I)V
    .locals 3

    const v0, 0x28001600

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->reloadResources()V

    .line 116
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged: changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomLetterbox"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 120
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public static performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setMode(I)V
    .locals 3

    .line 145
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-nez v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 154
    :try_start_0
    iget v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    if-ne p0, v2, :cond_2

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 157
    :cond_2
    :try_start_1
    iput p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    .line 158
    iget-object p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 159
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static setUseLetterbox(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    .line 141
    :cond_0
    sget p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setMode(I)V

    return-void
.end method

.method public static setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iput-object p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static shouldHideWallpaper(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1

    .line 372
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldHideWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;ZZ)V

    return-void
.end method

.method public final applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;ZZ)V
    .locals 3

    .line 325
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v0

    .line 326
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-nez v0, :cond_1

    if-nez v2, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    .line 334
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v2, :cond_2

    .line 335
    new-instance v2, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;

    invoke-direct {v2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_0

    .line 337
    :cond_2
    new-instance v2, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    invoke-direct {v2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 339
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    :cond_3
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    invoke-virtual {v2, v0, p0, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->applyLetterboxEnhancedIfNeededLocked(ZZZZ)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "CustomLetterboxConfiguration"

    .line 387
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Mode="

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", CornersRadius="

    .line 391
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", BlurRadius="

    .line 393
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 400
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "HasLiveWallpaper="

    .line 402
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    .line 406
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    .line 407
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reloadResources()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e3

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    const v1, 0x10500e4

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    .line 132
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mNightMode:I

    return-void
.end method

.method public final updateWallpaperType()V
    .locals 5

    .line 299
    :try_start_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    if-ne v0, v2, :cond_2

    .line 307
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 309
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    const-string v2, "CustomLetterbox"

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWallpaperType: hasLiveWallpaper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 312
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
