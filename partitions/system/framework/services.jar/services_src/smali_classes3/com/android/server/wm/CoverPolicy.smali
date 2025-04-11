.class public Lcom/android/server/wm/CoverPolicy;
.super Ljava/lang/Object;
.source "CoverPolicy.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

.field public mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field public mCoverWindow:Lcom/android/server/wm/WindowState;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mHandler:Landroid/os/Handler;

.field public mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

.field public mLastClearCoverState:Z

.field public mLastCoverAppCovered:Z

.field public mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

.field public mWallpaperTargetMayChange:Z

.field public mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$CyPR8-HiZu1c4hC3k9Fxv7l61Ec(Lcom/android/server/wm/CoverPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicy;->lambda$updateOrientationListener$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayPolicyExt;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 84
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    .line 91
    new-instance v0, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 95
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 96
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 97
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    new-instance v0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    iput-object v0, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    return-void
.end method

.method private synthetic lambda$updateOrientationListener$0()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    return-void
.end method


# virtual methods
.method public addViewCoverDisplay(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 413
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 414
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_0
    return-void
.end method

.method public final applyForceHideCoverDisplayPolicyLw(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn(I)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 225
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :goto_1
    return-void
.end method

.method public applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .locals 6

    .line 124
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xa46

    if-ne v1, v3, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->applyForceHideCoverDisplayPolicyLw(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_1

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const-string v3, "CoverPolicy"

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    sget-boolean v1, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyForceHidePolicyLw, hide by cover, win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WmCoverState;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iput-boolean v4, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 137
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->setHiddenByViewCover(Z)V

    :cond_3
    return v4

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_8

    .line 148
    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    sget-boolean v1, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyForceHidePolicyLw, show by cover, win="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WmCoverState;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    iput-boolean v4, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 156
    :cond_7
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->setHiddenByViewCover(Z)V

    :cond_8
    :goto_1
    return v2
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 233
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p2

    .line 234
    invoke-virtual {p2}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->isApplyWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_4

    .line 236
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 239
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-ne p2, v0, :cond_1

    .line 242
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 245
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 248
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 252
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 253
    sget-boolean p0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyPostLayoutPolicyLw, set mHideSViewCoverWindow to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 217
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 218
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 220
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    return-void
.end method

.method public canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    return v2

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7d5

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7f8

    if-eq v0, v3, :cond_6

    const/16 v3, 0x96b

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa49

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_6

    const/16 v3, 0x7e4

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa46

    if-eq v0, v3, :cond_5

    const/16 v3, 0xa47

    if-eq v0, v3, :cond_5

    .line 193
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v0, 0x833

    .line 194
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-gt p1, p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1

    :cond_6
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "CoverPolicy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCoverWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindow="

    .line 397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 399
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastCoverAppCovered="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw()V
    .locals 5

    .line 264
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 269
    :cond_0
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    sget-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishPostLayoutPolicyLw : mHideSViewCoverWindow ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2

    .line 279
    iget-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-nez v3, :cond_4

    .line 280
    invoke-interface {v0, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v1

    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_4

    .line 282
    iput-boolean v2, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V

    goto :goto_2

    .line 286
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-eqz v3, :cond_4

    .line 287
    invoke-interface {v0, v1}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_3

    .line 289
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 290
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 294
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_2
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_5

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_6

    .line 298
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_6
    return-void
.end method

.method public final declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    .line 115
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "CoverPolicy"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplyWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 306
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_3

    .line 307
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result p0

    .line 308
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v2, :cond_1

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 311
    :cond_3
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, v2, :cond_4

    .line 312
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method

.method public isLastCoverAppOpened()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeViewCoverDisplay(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_0
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .line 317
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 321
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CoverPolicy"

    const-string v1, "CoverManager threw RemoteException"

    .line 324
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public shouldApplyAodPolicy()Z
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return p0
.end method

.method public shouldApplyNoAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 368
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    .line 370
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 371
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_5

    .line 374
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->shouldHideStatusBarForCover()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_2
    return v3

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-ne p1, v1, :cond_5

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 379
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    if-nez p1, :cond_5

    .line 381
    :cond_4
    iget-boolean p1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean p1, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    return v3

    :cond_5
    return v2
.end method

.method public shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 199
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa47

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 202
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_2

    return v3

    .line 206
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    .line 207
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, p0, :cond_4

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    return v2

    :cond_5
    return v0
.end method

.method public updateCoverStateLocked()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->moveDisplayToTop(I)V

    return-void
.end method

.method public updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 330
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v1

    .line 332
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WmCoverState;->updateCoverState(Lcom/samsung/android/cover/CoverState;)Z

    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->disableHideSViewCoverOnce(Z)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateCoverStateLocked()V

    .line 346
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->hideImmersiveModeConfirmation()V

    if-nez v1, :cond_1

    .line 347
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 352
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 355
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 356
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V

    return-void
.end method

.method public final updateOrientationListener()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
