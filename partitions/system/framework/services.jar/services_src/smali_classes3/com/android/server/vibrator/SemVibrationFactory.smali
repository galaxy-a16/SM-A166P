.class public Lcom/android/server/vibrator/SemVibrationFactory;
.super Ljava/lang/Object;
.source "SemVibrationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSemVibration(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)Lcom/android/server/vibrator/SemVibration;
    .locals 0

    .line 14
    sget-boolean p0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/os/vibrator/SemHapticSegment;->isCustomIndexValid()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    new-instance p0, Lcom/android/server/vibrator/SemCustomVibration;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vibrator/SemCustomVibration;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)V

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/vibrator/SemVibrationBundle;->getIndex()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->isDcMotorClickIndex(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x12

    .line 19
    invoke-virtual {p4, p0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result p0

    .line 20
    invoke-virtual {p2, p0}, Lcom/android/server/vibrator/SemVibrationBundle;->setMagnitude(I)V

    .line 21
    new-instance p0, Lcom/android/server/vibrator/SemDcVibration;

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/SemDcVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0

    .line 24
    :cond_1
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Lcom/android/server/vibrator/SemPatternVibration;

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/SemPatternVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0

    .line 25
    :cond_3
    :goto_0
    new-instance p0, Lcom/android/server/vibrator/SemIndexVibration;

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/SemIndexVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0
.end method
