.class public Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "InputWindowHandleWrapper.java"


# instance fields
.field public mChanged:Z

.field public final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    return-void
.end method


# virtual methods
.method public applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public clearTouchableRegion()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public forceChange()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public getDisplayId()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->displayId:I

    return p0
.end method

.method public getInputApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object p0
.end method

.method public hasWallpaper()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChanged()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return p0
.end method

.method public isFocusable()Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrustedOverlay()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDispatchingTimeoutMillis(J)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 137
    :cond_0
    iput-wide p1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setDisplayId(I)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v1, p1, :cond_0

    return-void

    .line 226
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFocusTransferTarget(Landroid/os/IBinder;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return-void

    .line 296
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 162
    iput-boolean v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setHasWallpaper(Z)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->hasWallpaper()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-ne v1, p1, :cond_0

    return-void

    .line 97
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setInputConfigMasked(II)V
    .locals 3

    and-int/2addr p1, p2

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int v2, v1, p2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    not-int p2, p2

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 288
    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsFlags(I)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    if-ne v1, p1, :cond_0

    return-void

    .line 121
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsSamsungFlags(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    if-ne v1, p1, :cond_0

    return-void

    .line 310
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    const/4 p1, 0x1

    .line 311
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setLayoutParamsType(I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    if-ne v1, p1, :cond_0

    return-void

    .line 129
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOneHandSpecs(FFF)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    return-void

    .line 321
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    .line 322
    iput p2, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    .line 323
    iput p3, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerPid(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    if-ne v1, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setOwnerUid(I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    if-ne v1, p1, :cond_0

    return-void

    .line 210
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isPaused()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setReplaceTouchableRegionWithCrop(Z)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 270
    :cond_0
    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 254
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setSurfaceInset(I)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    if-ne v1, p1, :cond_0

    return-void

    .line 246
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->surfaceInset:I

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    return-void

    .line 105
    :cond_0
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchOcclusionMode(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    if-ne v1, p1, :cond_0

    return-void

    .line 169
    :cond_0
    iput p1, v0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setTrustedOverlay(Z)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isTrustedOverlay()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public setWindowToken(Landroid/view/IWindow;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, p1}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/view/IWindow;)V

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
