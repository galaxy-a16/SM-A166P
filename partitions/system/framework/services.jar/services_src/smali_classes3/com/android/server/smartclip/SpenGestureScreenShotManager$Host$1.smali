.class public Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;

.field public final synthetic val$containsTargetSystemWindow:Z

.field public final synthetic val$displayId:I

.field public final synthetic val$height:I

.field public final synthetic val$sourceCrop:Landroid/graphics/Rect;

.field public final synthetic val$targetWindowType:I

.field public final synthetic val$useIdentityTransform:Z

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;IIZLandroid/graphics/Rect;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->this$0:Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host;

    iput p2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    iput p3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    iput-boolean p4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    iput-object p5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    iput p7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    iput-boolean p8, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;
    .locals 9

    new-instance v8, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    iget v1, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$displayId:I

    iget v2, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$targetWindowType:I

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$containsTargetSystemWindow:Z

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$sourceCrop:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$width:I

    iget v6, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$height:I

    iget-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->val$useIdentityTransform:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;-><init>(IIZLandroid/graphics/Rect;IIZ)V

    return-object v8
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;->call()Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    move-result-object p0

    return-object p0
.end method
