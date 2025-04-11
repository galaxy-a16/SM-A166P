.class public final Lcom/android/server/display/DisplayBrightnessState;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# instance fields
.field public final mBrightness:F

.field public final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public final mSdrBrightness:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getSdrBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayBrightnessState;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getSdrBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    return p0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdrBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mSdrBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayBrightnessState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n    brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    sdrBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getSdrBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    brightnessReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
