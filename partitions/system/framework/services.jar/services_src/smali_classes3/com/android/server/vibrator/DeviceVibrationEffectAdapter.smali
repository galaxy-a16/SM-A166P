.class public final Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;
.super Ljava/lang/Object;
.source "DeviceVibrationEffectAdapter.java"


# instance fields
.field public final mSegmentAdapters:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/vibrator/RampToStepAdapter;

    .line 35
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/vibrator/RampToStepAdapter;-><init>(I)V

    new-instance v1, Lcom/android/server/vibrator/StepToRampAdapter;

    invoke-direct {v1}, Lcom/android/server/vibrator/StepToRampAdapter;-><init>()V

    new-instance v2, Lcom/android/server/vibrator/RampDownAdapter;

    .line 37
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/android/server/vibrator/RampDownAdapter;-><init>(II)V

    new-instance p1, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;

    invoke-direct {p1}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;-><init>()V

    filled-new-array {v0, v1, v2, p1}, [Lcom/android/server/vibrator/VibrationEffectAdapters$SegmentsAdapter;

    move-result-object p1

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->mSegmentAdapters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->mSegmentAdapters:Ljava/util/List;

    invoke-static {p1, p0, p2}, Lcom/android/server/vibrator/VibrationEffectAdapters;->apply(Landroid/os/VibrationEffect;Ljava/util/List;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method
