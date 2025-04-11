.class public abstract Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# direct methods
.method public static synthetic $r8$lambda$9HiiB19R1ZDUD55ZGSmiYKVpfio(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$3(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ef1Njm6mO9S-7i_wflPqaRf9hJ8(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$2(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMP3jxNKQ-lJBk-FaeN6b1mcROM(FLcom/android/server/DssController$PairConfiguration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$4(FLcom/android/server/DssController$PairConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1aFeqDPLKmB5_ZN5zQodIptCzE(FLandroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToConfiguration$0(FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hX3f_tdw2IhCV610S1kA09i4dWY(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$1(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .locals 1

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    new-instance v0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;-><init>(F)V

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .locals 9

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    new-instance v4, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda1;

    invoke-direct {v7, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda1;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    new-instance v5, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;

    invoke-direct {v8, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    new-instance v6, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v7, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;

    invoke-direct {v7, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v6, v0, v1, v7}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    neg-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static synthetic lambda$applyDssToConfiguration$0(FLandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$1(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$2(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$3(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$4(FLcom/android/server/DssController$PairConfiguration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    iget-object p0, p1, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static scaleDpiValue(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
