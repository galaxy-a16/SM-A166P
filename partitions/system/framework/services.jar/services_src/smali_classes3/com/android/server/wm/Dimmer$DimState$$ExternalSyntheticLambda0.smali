.class public final synthetic Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Dimmer$DimState;

.field public final synthetic f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/Dimmer$DimState;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/Dimmer$DimAnimatable;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimState;->$r8$lambda$Stso0zjPjRYnv-_l1IzwRiPVCYs(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/Dimmer$DimAnimatable;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
