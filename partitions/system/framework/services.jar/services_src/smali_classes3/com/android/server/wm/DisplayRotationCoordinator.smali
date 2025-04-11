.class public Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "DisplayRotationCoordinator.java"


# instance fields
.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez p0, :cond_1

    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method


# virtual methods
.method public getDefaultDisplayCurrentRotation()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    return p0
.end method

.method public onDefaultDisplayRotationChanged(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 59
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public removeDefaultDisplayRotationChangedCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setDefaultDisplayDefaultRotation(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    return-void
.end method

.method public setDefaultDisplayRotationChangedCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string p0, "DisplayRotationCoordinator"

    const-string p1, "Multiple clients unsupported"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 94
    iget v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget p0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    if-eq v0, p0, :cond_1

    .line 95
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
