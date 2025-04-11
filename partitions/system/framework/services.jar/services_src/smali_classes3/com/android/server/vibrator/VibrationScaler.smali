.class public final Lcom/android/server/vibrator/VibrationScaler;
.super Ljava/lang/Object;
.source "VibrationScaler.java"


# instance fields
.field public final mDefaultVibrationAmplitude:I

.field public final mScaleLevels:Landroid/util/SparseArray;

.field public final mSettingsController:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0075

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 60
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 61
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const p2, 0x3f19999a    # 0.6f

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 p2, -0x2

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const p2, 0x3f99999a    # 1.2f

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    const p2, 0x3fb33333    # 1.4f

    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static intensityToEffectStrength(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibrationScaler"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getExternalVibrationScale(I)I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 76
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    sub-int/2addr p0, v0

    const/4 v0, -0x2

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    return p0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for vibration with usage "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrationScaler"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 142
    :cond_0
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationScaler;->intensityToEffectStrength(I)I

    move-result p0

    .line 143
    invoke-virtual {p1, p0}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object p0

    return-object p0
.end method
