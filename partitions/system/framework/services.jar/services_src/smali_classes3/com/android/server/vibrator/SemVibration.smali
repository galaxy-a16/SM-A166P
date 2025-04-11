.class public abstract Lcom/android/server/vibrator/SemVibration;
.super Ljava/lang/Object;
.source "SemVibration.java"


# instance fields
.field public mAttrs:Landroid/os/VibrationAttributes;

.field public mDisplayId:I

.field public mEffect:Landroid/os/CombinedVibration;

.field public mIndex:I

.field public mMagnitude:I

.field public mOpPkg:Ljava/lang/String;

.field public mReason:Ljava/lang/String;

.field public mRepeat:I

.field public mToken:Landroid/os/IBinder;

.field public mUid:I

.field public mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getAttrs()Landroid/os/VibrationAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getRepeat()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {p1}, Lcom/android/server/vibrator/SemVibrationBundle;->getMagnitude()I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-void
.end method


# virtual methods
.method public commonValidation()Z
    .locals 3

    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v1, 0x0

    const-string v2, "VibratorManagerService"

    if-gtz v0, :cond_0

    const-string/jumbo p0, "magnitude value is under 0"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-lez v0, :cond_1

    const-string/jumbo p0, "repeat value is wrong."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez p0, :cond_2

    const-string/jumbo p0, "token is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/Vibration$CallerInfo;
    .locals 7

    new-instance v6, Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public getCommonLog()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    const v3, 0xc368

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), repeat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", usage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), magnitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getVibration()Lcom/android/server/vibrator/HalVibration;
.end method
