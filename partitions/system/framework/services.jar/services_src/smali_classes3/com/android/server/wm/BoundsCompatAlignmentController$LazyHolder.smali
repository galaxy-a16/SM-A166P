.class public abstract Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatAlignmentController.java"


# static fields
.field public static final sController:Lcom/android/server/wm/BoundsCompatAlignmentController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignmentController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsCompatAlignmentController;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController-IA;)V

    sput-object v0, Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;->sController:Lcom/android/server/wm/BoundsCompatAlignmentController;

    return-void
.end method
