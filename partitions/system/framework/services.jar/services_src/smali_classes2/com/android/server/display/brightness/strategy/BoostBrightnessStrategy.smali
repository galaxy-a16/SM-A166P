.class public Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;
.super Ljava/lang/Object;
.source "BoostBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "BoostBrightnessStrategy"

    return-object p0
.end method

.method public updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {v0, p1, p1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
