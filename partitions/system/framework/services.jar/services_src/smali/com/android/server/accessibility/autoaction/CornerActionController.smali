.class public Lcom/android/server/accessibility/autoaction/CornerActionController;
.super Ljava/lang/Object;
.source "CornerActionController.java"


# static fields
.field public static final POPUP_DIRECTION:[I

.field public static final POPUP_GRAVITY:[I

.field public static final TTS_CORNER:[I

.field public static mGestureActionFlag:Ljava/util/HashMap;


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCornerActionTypeObserver:Landroid/database/ContentObserver;

.field public mCornerActions:[Ljava/lang/String;

.field public mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

.field public mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mGestureAction:Ljava/lang/String;

.field public mIsAnimating:Z

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTipAnchorView:Landroid/view/View;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mUserId:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$3mLBaH5TOV400Rp7BFayFC_t7jU(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->lambda$showGestureActionTip$0([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GNsn55Yx7UGhksfbzM1oR57gjU(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->lambda$showGestureActionTip$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijF3yWCTBz2VL8J0xmL7Gq3oSfU(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->lambda$showGestureActionTip$1([Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/CornerActionController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetCornerAction(Lcom/android/server/accessibility/autoaction/CornerActionController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->setCornerAction()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "double_click"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "zoom_in"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "zoom_out"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_left"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_right"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_up"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "swipe_down"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "click_and_hold"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "drag"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "drag_and_drop"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x53

    const/16 v3, 0x55

    const/16 v4, 0x33

    const/16 v5, 0x35

    .line 74
    filled-new-array {v4, v5, v0, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 78
    filled-new-array {v0, v2, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    const v0, 0x104010d

    const v1, 0x104010e

    const v2, 0x1040110

    const v3, 0x1040111

    .line 82
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 89
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    .line 115
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 118
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->initGestureActionTip()V

    .line 119
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_corner_actions"

    .line 120
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    .line 119
    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActionTypeObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private synthetic lambda$showGestureActionTip$0([Z)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    aput-boolean v0, p1, v1

    .line 329
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showGestureActionTip$1([Z)V
    .locals 3

    const/4 v0, 0x0

    .line 333
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 335
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 336
    aput-boolean v0, p1, v0

    :cond_0
    return-void
.end method

.method private synthetic lambda$showGestureActionTip$2(I)V
    .locals 1

    .line 354
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    sget-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method


# virtual methods
.method public clearDuration()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->clearAnimation()V

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_0
    return-void
.end method

.method public convertKeyToTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createDurationProgress(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    :cond_0
    return-void
.end method

.method public getCorner(FFI)I
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 160
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 161
    invoke-virtual {p3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 162
    iget p3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 163
    iget p3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    :cond_0
    const/4 p3, 0x0

    cmpl-float v0, p1, p3

    const/high16 v1, 0x42200000    # 40.0f

    if-nez v0, :cond_1

    cmpg-float v2, p2, v1

    if-ltz v2, :cond_2

    :cond_1
    cmpg-float v2, p1, v1

    if-gez v2, :cond_3

    cmpl-float v3, p2, p3

    if-nez v3, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 170
    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    cmpg-float v4, p2, v1

    if-ltz v4, :cond_5

    :cond_4
    int-to-float v4, v3

    sub-float/2addr v4, p1

    cmpg-float v4, v4, v1

    if-gez v4, :cond_6

    cmpl-float p3, p2, p3

    if-nez p3, :cond_6

    :cond_5
    return v5

    :cond_6
    if-gez v2, :cond_7

    .line 173
    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p3, v5

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_8

    :cond_7
    if-nez v0, :cond_9

    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    cmpg-float p3, p3, v1

    if-gez p3, :cond_9

    :cond_8
    const/4 p0, 0x2

    return p0

    :cond_9
    int-to-float p3, v3

    sub-float/2addr p3, p1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_a

    .line 176
    iget p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    sub-int/2addr p3, v5

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_b

    :cond_a
    sub-int/2addr v3, v5

    int-to-float p3, v3

    cmpl-float p1, p1, p3

    if-nez p1, :cond_c

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr p0, p2

    cmpg-float p0, p0, v1

    if-gez p0, :cond_c

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public getCornerActions(I)[Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object p0, p0, p1

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 297
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public handleCornerAction(II)I
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 v1, 0x0

    .line 142
    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final initGestureActionTip()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 302
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p0, 0x0

    .line 303
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p0, 0x7d6

    .line 304
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x20

    .line 305
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 306
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return-void
.end method

.method public performCornerAction(Ljava/lang/String;II)I
    .locals 5

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "double_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "swipe_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "swipe_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "swipe_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "drag_and_drop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "drag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "swipe_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "pause_resume_auto_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v4, v2

    goto :goto_0

    :sswitch_a
    const-string v0, "click_and_hold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 209
    iget-object p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {p1, p3, p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_b
    return v3

    :pswitch_0
    return v1

    .line 195
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    const-string v4, "accessibility_corner_action_tip_shown"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 198
    sget-object v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v3, v0, v1

    if-nez v3, :cond_c

    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/autoaction/CornerActionController;->showGestureActionTip(Ljava/lang/String;II)V

    or-int p1, v0, v1

    .line 202
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {p2, v4, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_c
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_a
        -0x5513dbbf -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public performGestureAction(Landroid/view/MotionEvent;)I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "drag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "drag_and_drop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_1
    return v1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->setMotionEventForDragAction(Landroid/view/MotionEvent;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    return v1

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final setCornerAction()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_corner_actions"

    iget v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDurationViewOnOff(Z)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setViewOnOff(Z)V

    :cond_0
    return-void
.end method

.method public final showGestureActionTip(Ljava/lang/String;II)V
    .locals 4

    .line 310
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 311
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    aget v1, v1, p3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 312
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance p2, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    invoke-direct {p2, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 315
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 316
    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x104010f

    .line 315
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p2, p1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 322
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    rem-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    :goto_0
    const/4 v3, 0x2

    if-ge p3, v3, :cond_1

    move v3, v2

    goto :goto_1

    .line 323
    :cond_1
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 322
    :goto_1
    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    new-array p2, v0, [Z

    aput-boolean v2, p2, v2

    .line 326
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    .line 332
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v3, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemTipPopup;->setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V

    .line 340
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p2}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 341
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 352
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    new-instance p2, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p2, 0x1388

    .line 356
    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startDuration(J)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->setDurationTime(J)V

    .line 270
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    invoke-virtual {p1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->startAnimation()V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    :cond_0
    return-void
.end method

.method public updateDurationViewXY(FF)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->updateView(FF)V

    :cond_0
    return-void
.end method
