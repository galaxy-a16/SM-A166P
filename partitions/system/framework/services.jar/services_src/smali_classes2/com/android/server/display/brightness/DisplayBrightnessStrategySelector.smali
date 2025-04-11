.class public Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
.super Ljava/lang/Object;
.source "DisplayBrightnessStrategySelector.java"


# instance fields
.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

.field public final mDisplayId:I

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

.field public final mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

.field public final mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

.field public mOldBrightnessStrategyName:Ljava/lang/String;

.field public final mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

.field public final mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

.field public final mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;

    invoke-direct {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;-><init>()V

    .line 76
    :cond_0
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 77
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getScreenOffBrightnessStrategy()Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 79
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getTemporaryBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 81
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getBoostBrightnessStrategy()Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 82
    invoke-virtual {p2, p3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getFollowerBrightnessStrategy(I)Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 83
    invoke-virtual {p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getInvalidBrightnessStrategy()Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x111001b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 86
    invoke-virtual {p2}, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DisplayBrightnessStrategySelector:"

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOldBrightnessStrategyName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getFollowerDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    return-object p0
.end method

.method public getTemporaryDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    return-object p0
.end method

.method public isAllowAutoBrightnessWhileDozingConfig()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    return p0
.end method

.method public selectStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    goto :goto_0

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 103
    invoke-virtual {p2}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->getBrightnessToFollow()F

    move-result p2

    .line 102
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    goto :goto_0

    .line 105
    :cond_2
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz p2, :cond_3

    .line 106
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    goto :goto_0

    .line 107
    :cond_3
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 108
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    goto :goto_0

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->getTemporaryScreenBrightness()F

    move-result p1

    .line 110
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 112
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 115
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Changing the DisplayBrightnessStrategy from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for display "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayBrightnessStrategySelector"

    .line 116
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public final shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 1

    .line 164
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 165
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
