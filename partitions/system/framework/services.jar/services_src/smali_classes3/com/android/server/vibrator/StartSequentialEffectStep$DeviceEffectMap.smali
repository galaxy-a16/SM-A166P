.class public final Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
.super Ljava/lang/Object;
.source "StartSequentialEffectStep.java"


# instance fields
.field public final mRequiredSyncCapabilities:J

.field public final mVibratorEffects:Landroid/util/SparseArray;

.field public final mVibratorIds:[I

.field public final synthetic this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V
    .locals 6

    .line 299
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 301
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    .line 302
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    const/4 v1, 0x0

    .line 303
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 304
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 305
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v3

    .line 306
    iget-object v4, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 307
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v5

    .line 306
    invoke-virtual {v4, v5, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 308
    instance-of v4, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    aput v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V
    .locals 7

    .line 316
    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/StartSequentialEffectStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iget-object v0, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 319
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v2, v1

    .line 320
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 321
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 322
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v4

    .line 324
    iget-object v5, p1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->deviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 325
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    .line 324
    invoke-virtual {v5, v6, v4}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 326
    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    .line 332
    :goto_1
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 333
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    iget-object p2, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method


# virtual methods
.method public final calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .locals 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 380
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x2

    if-ge v3, v4, :cond_3

    .line 381
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 382
    instance-of v11, v4, Landroid/os/vibrator/StepSegment;

    if-eqz v11, :cond_0

    or-long/2addr v0, v9

    goto :goto_1

    .line 384
    :cond_0
    instance-of v9, v4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v9, :cond_1

    or-long/2addr v0, v7

    goto :goto_1

    .line 386
    :cond_1
    instance-of v4, v4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v4, :cond_2

    or-long/2addr v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {p0, v0, v1, v9, v10}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v2, 0x10

    .line 394
    :cond_4
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit8 v2, v2, 0x20

    .line 397
    :cond_5
    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    const-wide/16 p0, 0x1

    or-long/2addr p0, v0

    int-to-long v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public effectAt(I)Landroid/os/VibrationEffect$Composed;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    return-object p0
.end method

.method public getRequiredSyncCapabilities()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    return-object p0
.end method

.method public final requireMixedTriggerCapability(JJ)Z
    .locals 4

    .line 0
    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    not-long p3, p3

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorIds:[I

    array-length p0, p0

    return p0
.end method

.method public vibratorIdAt(I)I
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method
