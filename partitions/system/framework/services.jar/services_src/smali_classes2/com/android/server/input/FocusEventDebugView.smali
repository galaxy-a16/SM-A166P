.class public Lcom/android/server/input/FocusEventDebugView;
.super Landroid/widget/LinearLayout;
.source "FocusEventDebugView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mOuterPadding:I

.field public final mPressedKeyContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

.field public final mPressedKeys:Ljava/util/Map;

.field public final mPressedModifierContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;


# direct methods
.method public static synthetic $r8$lambda$QHw78gX1gWPpMj7dO_06zOoD4cU(Landroid/widget/HorizontalScrollView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/android/server/input/FocusEventDebugView;->lambda$new$0(Landroid/widget/HorizontalScrollView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjUbrB97zpLcPzo1PwzXA02u0y4(Lcom/android/server/input/FocusEventDebugView;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/FocusEventDebugView;->lambda$reportEvent$1(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/input/FocusEventDebugView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/FocusEventDebugView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/input/FocusEventDebugView;->mOuterPadding:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const v1, 0x800053

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v1, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v2, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {v1, v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x53

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getLabel(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    const/16 v1, 0x43

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x70

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "KEYCODE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_0
    const-string/jumbo p0, "\u2198"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "\u2197"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "\u2199"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "\u2196"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "\u2192"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "\u2190"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "\u2193"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "\u2191"

    return-object p0

    :cond_2
    const-string/jumbo p0, "\u2326"

    return-object p0

    :cond_3
    const-string p0, "ESC"

    return-object p0

    :cond_4
    const-string/jumbo p0, "\u232b"

    return-object p0

    :cond_5
    const-string/jumbo p0, "\u23ce"

    return-object p0

    :cond_6
    const-string/jumbo p0, "\u2423"

    return-object p0

    :cond_7
    const-string/jumbo p0, "\u21e5"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Landroid/widget/HorizontalScrollView;Landroid/view/View;IIIIIIII)V
    .locals 0

    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method private synthetic lambda$reportEvent$1(Landroid/view/InputEvent;)V
    .locals 0

    check-cast p1, Landroid/view/KeyEvent;

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/input/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/FocusEventDebugView$PressedKeyView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v2, :cond_2

    sget-object p0, Lcom/android/server/input/FocusEventDebugView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got key up for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that was not tracked as being down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;->handleKeyRelease(Lcom/android/server/input/FocusEventDebugView$PressedKeyView;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/android/server/input/FocusEventDebugView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got key down for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that was already tracked as being down."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;->handleKeyRepeat(Lcom/android/server/input/FocusEventDebugView$PressedKeyView;)V

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/server/input/FocusEventDebugView$PressedKeyView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/input/FocusEventDebugView;->getLabel(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/input/FocusEventDebugView$PressedKeyView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/input/FocusEventDebugView$PressedKeyContainer;->handleKeyPressed(Lcom/android/server/input/FocusEventDebugView$PressedKeyView;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    iget v2, p0, Lcom/android/server/input/FocusEventDebugView;->mOuterPadding:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public reportEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/FocusEventDebugView;Landroid/view/InputEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
