.class public Lcom/android/server/display/DisplayBrightnessState$Builder;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# instance fields
.field public mBrightness:F

.field public mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mSdrBrightness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    new-instance v0, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V

    return-object v0
.end method

.method public getBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    return p0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdrBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    return p0
.end method

.method public setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    return-object p0
.end method

.method public setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public setSdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mSdrBrightness:F

    return-object p0
.end method
