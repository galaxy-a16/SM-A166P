.class public Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;
.super Lcom/android/server/wm/CustomLetterboxEnhancedController;
.source "CustomLetterboxEnhancedController.java"


# instance fields
.field public mAdded:Z

.field public final mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

.field public mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

.field public final mContext:Landroid/content/Context;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$9rkvqJ8k26X_omNF3cB7dbfBXdU(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->applyCapturedBlurWallpaper()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getToken()Landroid/os/Binder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const-string v0, "CustomLetterbox"

    const-string v1, "mCapturedBlurWallpaperWindow is already not null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public final applyCapturedBlurWallpaper()V
    .locals 7

    const-string v0, "CustomLetterbox"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getCapturedBlurWallpaperInfo()Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ", info="

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->setViewVisible(Z)V

    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v3

    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->updateLayoutParams(II)V

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-nez v3, :cond_2

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    :cond_2
    new-instance v3, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v3, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    if-eqz v3, :cond_3

    const-class v2, Landroid/view/WindowManager;

    invoke-static {v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateView: mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-class v3, Landroid/view/WindowManager;

    invoke-static {v3}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddView: mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveView: mView="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    const-class v2, Landroid/view/WindowManager;

    invoke-static {v2}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-interface {v2, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    :goto_0
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->scheduleCompleteLetterboxEnhanced(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "Failed to applyCapturedBlurWallpaper"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->failLetterboxEnhanced()V

    :goto_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    if-eqz p2, :cond_1

    const-string p2, ", mAdded="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz p2, :cond_2

    const-string p2, ", mView="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_3

    const-string p2, ", mLayoutParams="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, ", mBitmap="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    return p0
.end method

.method public isViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyLetterboxEnhanced()V
    .locals 6

    invoke-super {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->onApplyLetterboxEnhanced()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CustomLetterbox"

    const-string/jumbo v1, "onApplyLetterboxEnhanced"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldHideView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->setViewVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->removeCallbacks()V

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isDisplayDeviceTypeChanged()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    int-to-long v2, p0

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setViewVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final updateLayoutParams(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    const/4 v2, -0x3

    const/16 v3, 0x7f6

    invoke-direct {v0, v3, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getToken()Landroid/os/Binder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomLetterbox("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
