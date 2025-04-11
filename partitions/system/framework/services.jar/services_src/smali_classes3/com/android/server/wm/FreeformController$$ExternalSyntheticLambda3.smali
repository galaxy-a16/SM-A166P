.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:Z

.field public final synthetic f$7:F

.field public final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;ZILcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    iput-boolean p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    iput-object p5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iput-boolean p7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    iput p8, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    iput p9, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$6:Z

    iget v7, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$7:F

    iget v8, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda3;->f$8:F

    move-object v9, p1

    check-cast v9, Lcom/android/server/wm/Task;

    invoke-static/range {v0 .. v9}, Lcom/android/server/wm/FreeformController;->$r8$lambda$ybYZ7mTN_9Qd71yqzfflRcW57II(Lcom/android/server/wm/FreeformController;ZILcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFLcom/android/server/wm/Task;)V

    return-void
.end method
