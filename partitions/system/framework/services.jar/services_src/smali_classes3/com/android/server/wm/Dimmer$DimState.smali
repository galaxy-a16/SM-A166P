.class Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "Dimmer.java"


# instance fields
.field public isVisible:Z

.field public mAnimateExit:Z

.field public final mDimBounds:Landroid/graphics/Rect;

.field public mDimLayer:Landroid/view/SurfaceControl;

.field public mDimming:Z

.field public mDontReset:Z

.field public mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method public static synthetic $r8$lambda$Stso0zjPjRYnv-_l1IzwRiPVCYs(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Dimmer$DimState;->lambda$new$0(Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 148
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    .line 149
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 150
    new-instance v0, Lcom/android/server/wm/Dimmer$DimAnimatable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$DimAnimatable-IA;)V

    .line 151
    new-instance p2, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V

    invoke-static {p1}, Lcom/android/server/wm/Dimmer;->-$$Nest$fgetmHost(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez p0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimAnimatable;->removeSurface()V

    :cond_0
    return-void
.end method
