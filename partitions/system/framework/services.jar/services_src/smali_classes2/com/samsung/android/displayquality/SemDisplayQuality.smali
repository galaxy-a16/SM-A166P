.class public Lcom/samsung/android/displayquality/SemDisplayQuality;
.super Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.source "SemDisplayQuality.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;-><init>(Landroid/content/Context;)V

    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SemDisplayQualityDummy"

    const-string p1, "SemDisplayQuality"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public handleAutoBrightnessModeOff()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleAutoBrightnessModeOn()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleScreenModeChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleScreenOff()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleScreenOffAsync()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleScreenOn()V
    .locals 0

    .line 0
    return-void
.end method

.method public handleScreenOnAsync()V
    .locals 0

    .line 0
    return-void
.end method
