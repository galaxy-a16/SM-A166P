.class public final synthetic Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BoundsCompatAlignmentController;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/BoundsCompatAlignmentController;

    iput-object p2, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/BoundsCompatAlignmentController;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/BoundsCompatAlignmentController;->$r8$lambda$XU09VQ8rSCXNJmY_wQauL1rhOYQ(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
