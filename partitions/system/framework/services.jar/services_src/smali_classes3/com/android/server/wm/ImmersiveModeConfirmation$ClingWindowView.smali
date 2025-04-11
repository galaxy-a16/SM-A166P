.class public Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# instance fields
.field public final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field public final SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

.field public mButtonOkLand:Landroid/widget/Button;

.field public mButtonOkPort:Landroid/widget/Button;

.field public mClingHandler:Landroid/os/Handler;

.field public mClingLayout:Landroid/view/ViewGroup;

.field public final mColor:Landroid/graphics/drawable/ColorDrawable;

.field public mColorAnim:Landroid/animation/ValueAnimator;

.field public final mConfirm:Ljava/lang/Runnable;

.field public mImageArrow0:Landroid/widget/ImageView;

.field public mImageArrow270:Landroid/widget/ImageView;

.field public mImageArrow90:Landroid/widget/ImageView;

.field public mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLayoutLand:Landroid/widget/FrameLayout;

.field public mLayoutPort:Landroid/widget/FrameLayout;

.field public mNavBarCanMove:Z

.field public mNavBarPosition:I

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mShowOkButton:Z

.field public mTextLand:Landroid/widget/TextView;

.field public mTextPort:Landroid/widget/TextView;

.field public mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public static synthetic $r8$lambda$TZceGtM8WoC9j4ty5ePQuFZzRxA(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onAttachedToWindow$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d2cMYPGUmTIwiIGq64-3r5-XAXQ(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onAttachedToWindow$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcoJLqwxzkkTjH27Cyox9RqnwSc(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClingHandler(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClingLayout(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColor(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmColorAnim(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterpolator(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateLayoutRunnable(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmColorAnim(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLayout(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6

    .line 391
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 392
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 349
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 354
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 363
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 382
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 513
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3e2e147b    # 0.17f

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 518
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    .line 520
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    .line 393
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 394
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    .line 395
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 396
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x10c000e

    .line 397
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 400
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 401
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Landroid/view/View;)V
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Landroid/view/View;)V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .locals 0

    .line 679
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 499
    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 500
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 499
    invoke-virtual {p0, p1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 410
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 411
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 412
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 418
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109009d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x1020362

    .line 422
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/FrameLayout;

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x1020361

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/FrameLayout;

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10204aa

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10203a5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    .line 426
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10204ab

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x10203a6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x102035a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x102035c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    .line 430
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v2, 0x102035b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateTextSize()V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 451
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const/high16 v2, -0x3d400000    # -96.0f

    mul-float/2addr v0, v2

    .line 452
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 454
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 482
    :goto_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 670
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 672
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result p1

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    .line 675
    iget v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    if-eq v1, v0, :cond_1

    .line 677
    :cond_0
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 678
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    .line 679
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 488
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final startArrowAnimation(I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 592
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 593
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 595
    iget-boolean v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    if-eqz v3, :cond_3

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    return-void

    .line 600
    :cond_3
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne p1, v1, :cond_4

    const v4, 0x105034e

    goto :goto_1

    :cond_4
    const v4, 0x105034d

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 608
    :cond_5
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v3

    invoke-direct {p1, v5, v5, v0, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 611
    :cond_6
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v3

    invoke-direct {p1, v0, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 614
    :cond_7
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v3

    int-to-float v0, v0

    invoke-direct {p1, v0, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_2
    const-wide/16 v0, 0xc8

    .line 617
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v0, 0x258

    .line 618
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 621
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x708

    .line 622
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v5, 0x12c

    .line 624
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 625
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 627
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 628
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 629
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 630
    new-instance p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;

    invoke-direct {p1, p0, v2, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 649
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 650
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final startButtonAnimation(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 654
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    :goto_0
    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 659
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 662
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 663
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 664
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateLayout()V
    .locals 6

    .line 545
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 547
    iget v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 549
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 551
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/FrameLayout;

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 554
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x1040c69

    .line 555
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v4, :cond_2

    .line 558
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 561
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    return-void

    :cond_3
    const v2, 0x1040c6a

    .line 570
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v4, :cond_5

    .line 572
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    if-nez v3, :cond_4

    const v2, 0x1040c6b

    .line 573
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 575
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 577
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startArrowAnimation(I)V

    return-void
.end method

.method public final updateTextSize()V
    .locals 4

    .line 533
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050351

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 535
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    move v1, v2

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 539
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 540
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 541
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    return-void
.end method
