.class public Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
.super Ljava/lang/Object;
.source "FollowerBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mBrightnessToFollow:F

.field public final mDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 42
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    return-void
.end method


# virtual methods
.method public getBrightnessToFollow()F
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "FollowerBrightnessStrategy"

    return-object p0
.end method

.method public setBrightnessToFollow(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    return-void
.end method

.method public updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 1

    .line 50
    iget p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    .line 50
    invoke-static {v0, p1, p1, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFFLjava/lang/String;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
