.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/Task;->$r8$lambda$sCBO30xHLcG6-gCtEjMQ7d5b7XQ(ILjava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
