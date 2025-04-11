.class public Lcom/samsung/server/wallpaper/SemWallpaperData;
.super Ljava/lang/Object;
.source "SemWallpaperData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mAnimatedBackground:Ljava/io/File;

.field public mAnimatedPkgName:Ljava/lang/String;

.field public mCroppedBitmap:Landroid/graphics/Bitmap;

.field public mDlsSemColors:Landroid/app/SemWallpaperColors;

.field public mExternalParams:Landroid/os/Bundle;

.field public mHeight:I

.field public mIsCopied:Z

.field public mIsDesktopWallpaper:Z

.field public mIsPreloaded:Z

.field public mLandscapeColors:[Landroid/app/SemWallpaperColors;

.field public mLastCallingPackage:Ljava/lang/String;

.field public mLastClearCallstackWithNullPackage:Ljava/lang/String;

.field public mMotionBackground:Ljava/io/File;

.field public mMotionPkgName:Ljava/lang/String;

.field public mOrientation:I

.field public mPrimarySemColors:Landroid/app/SemWallpaperColors;

.field public mSmartCropOriginalRect:Landroid/graphics/Rect;

.field public mSmartCropRect:Landroid/graphics/Rect;

.field public mTimeCreated:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVideoDefaultHasBeenUsed:Z

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;

.field public mVideoFirstFrameFile:Ljava/io/File;

.field public mVideoPkgName:Ljava/lang/String;

.field public mWaitingForUnlockUser:Z

.field public mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field public mWhich:I

.field public mWidth:I

.field public mWpType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 58
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 59
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 65
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-direct {v2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 66
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 75
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 80
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 81
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    const-string p0, "SemWallpaperData"

    .line 103
    invoke-static {p0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/server/wallpaper/SemWallpaperData;
    .locals 5

    const-string v0, "SemWallpaperData"

    .line 411
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 412
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 416
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 417
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 418
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->cloneBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 423
    :cond_0
    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 435
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_4

    .line 441
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_5

    .line 444
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 446
    :cond_5
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    .line 447
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    .line 449
    :cond_6
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    .line 450
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    .line 452
    :cond_7
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_8

    .line 453
    array-length v2, v2

    new-array v2, v2, [Landroid/app/SemWallpaperColors;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    const/4 v2, 0x0

    .line 454
    :goto_1
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    .line 455
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedBackground()Ljava/io/File;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    return-object p0
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getCreationTime()Ljava/lang/String;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    return-object p0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCurrentTimeString()Ljava/lang/String;
    .locals 2

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 403
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 404
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDlsSemColors()Landroid/app/SemWallpaperColors;
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getExternalParams()Landroid/os/Bundle;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    return p0
.end method

.method public getIsCopied()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    return p0
.end method

.method public getIsPreloaded()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return p0
.end method

.method public getLandscapeColors()[Landroid/app/SemWallpaperColors;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getLastCallingPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastCallingPackage(Z)Ljava/lang/String;
    .locals 3

    const-string v0, "("

    const-string v1, "]"

    if-eqz p1, :cond_0

    .line 229
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 240
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 244
    :goto_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastCallingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWallpaperData"

    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getLastClearCallstackWithNullPackage()Ljava/lang/String;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getMotionBackground()Ljava/io/File;
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    return-object p0
.end method

.method public getMotionPkgName()Ljava/lang/String;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    return p0
.end method

.method public getPrimarySemColors()Landroid/app/SemWallpaperColors;
    .locals 0

    .line 666
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getSmartCropOriginalRect()Landroid/graphics/Rect;
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSmartCropRect()Landroid/graphics/Rect;
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoDefaultHasBeenUsed()Z
    .locals 0

    .line 646
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    return p0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFirstFrameFile()Ljava/io/File;
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    return-object p0
.end method

.method public getVideoPkgName()Ljava/lang/String;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getWaitingForUnlockUser()Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    return p0
.end method

.method public getWallpaperHistories()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    return-object p0
.end method

.method public getWallpaperHistory()Ljava/lang/String;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperHistoryList()Ljava/util/ArrayList;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getWallpaperHistoryDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperTypeString()Ljava/lang/String;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "default"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video"

    goto :goto_0

    :cond_1
    const-string p0, "live"

    goto :goto_0

    :cond_2
    const-string p0, "gif"

    goto :goto_0

    :cond_3
    const-string p0, "animated"

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "multiple"

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "motion"

    goto :goto_0

    :cond_6
    const-string p0, "image"

    :goto_0
    return-object p0
.end method

.method public getWhich()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    return p0
.end method

.method public getWpType()I
    .locals 0

    .line 200
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    return p0
.end method

.method public isThemeContents()Z
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistory()Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.themecenter"

    .line 381
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SemWallpaperData"

    const-string v0, "Theme contents."

    .line 382
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public parseWallpaperHistoryInfo(Ljava/lang/String;)V
    .locals 10

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ";"

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 340
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    const-string v4, "::"

    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 342
    aget-object v4, v3, v4

    aget-object v5, v3, v1

    array-length v6, v3

    const-string v7, ""

    const/4 v8, 0x2

    if-le v6, v8, :cond_1

    aget-object v6, v3, v8

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    array-length v8, v3

    const/4 v9, 0x3

    if-le v8, v9, :cond_2

    aget-object v7, v3, v9

    :cond_2
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .line 319
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ";"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 322
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "::"

    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 324
    aget-object v4, v3, v4

    aget-object v5, v3, v1

    array-length v6, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    const/4 v8, 0x2

    if-le v6, v8, :cond_0

    :try_start_1
    aget-object v6, v3, v8

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_1
    array-length v8, v3

    const/4 v9, 0x3

    if-le v8, v9, :cond_1

    aget-object v7, v3, v9

    :cond_1
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 330
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public setAnimatedBackground(Ljava/io/File;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    return-void
.end method

.method public setAnimatedPkgName(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    return-void
.end method

.method public setCreationTime(Ljava/lang/String;)V
    .locals 1

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    return-void
.end method

.method public setCroppedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDlsSemColors(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setExternalParams(Landroid/os/Bundle;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    return-void
.end method

.method public setIsCopied(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    return-void
.end method

.method public setIsDesktopWallpaper(Z)V
    .locals 0

    .line 652
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    return-void
.end method

.method public setIsPreloaded(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return-void
.end method

.method public setLandscapeColors([Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setLastCallingPackage(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-void
.end method

.method public setLastClearCallstackWithNullPackage(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    return-void
.end method

.method public setMotionBackground(Ljava/io/File;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    return-void
.end method

.method public setMotionPkgName(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    return-void
.end method

.method public setPrimarySemColors(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setSmartCropOriginalRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setSmartCropRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-void
.end method

.method public setVideoDefaultHasBeenUsed(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameFile(Ljava/io/File;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    return-void
.end method

.method public setVideoPkgName(Ljava/lang/String;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    return-void
.end method

.method public setWaitingForUnlockUser(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    return-void
.end method

.method public setWallpaperHistories(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;)V
    .locals 0

    .line 310
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    return-void
.end method

.method public setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 302
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->addWallpaperHistoryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWhich(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    return-void
.end method

.method public setWpType(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "\n    mTimeCreated="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsCopied="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsPreloaded="

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mOrientation="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWhich=0x"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWpType="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mUri="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mLastCallingPackage="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mExternalParams="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\n    mMotionPkgName="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const-string v1, "\n    mAnimatedPkgName="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x8

    const-string v3, ", mVideoFileName="

    if-ne v1, v2, :cond_2

    :try_start_1
    const-string v1, "\n    mVideoFilePath="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoPkgName="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDefaultHasBeenUsed="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "\n    mPrimarySemColors="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mDlsSemColors="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mSmartCropOriginalRect="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartCropRect="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v1, :cond_4

    .line 146
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, "\n    mLandscapeColors="

    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "\n    mWallpaperHistory="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mLastClearCallstackWithNullPackage="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 158
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
