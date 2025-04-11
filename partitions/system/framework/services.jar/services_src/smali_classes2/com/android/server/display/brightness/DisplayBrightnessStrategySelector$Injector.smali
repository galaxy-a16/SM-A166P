.class Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;
.super Ljava/lang/Object;
.source "DisplayBrightnessStrategySelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoostBrightnessStrategy()Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getFollowerBrightnessStrategy(I)Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;-><init>(I)V

    return-object p0
.end method

.method public getInvalidBrightnessStrategy()Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getScreenOffBrightnessStrategy()Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getTemporaryBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
    .locals 0

    new-instance p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;-><init>()V

    return-object p0
.end method
