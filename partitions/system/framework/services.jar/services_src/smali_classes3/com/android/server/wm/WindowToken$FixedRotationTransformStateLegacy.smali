.class public Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;
.super Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
.source "WindowToken.java"


# instance fields
.field public final mRotatedContainers:Ljava/util/ArrayList;

.field public final mRotator:Lcom/android/server/wm/SeamlessRotator;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V
    .locals 1

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 174
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 181
    new-instance p2, Lcom/android/server/wm/SeamlessRotator;

    iget p3, p1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v0, 0x1

    invoke-direct {p2, p3, p4, p1, v0}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    return-void
.end method


# virtual methods
.method public disassociate(Lcom/android/server/wm/WindowToken;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 207
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetTransform()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 198
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transform(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
