.class public abstract Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.super Ljava/lang/Object;
.source "SemDisplayQualityAP.java"


# static fields
.field public static final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public static final SCREEN_MODE_SETTING_URI:Landroid/net/Uri;


# instance fields
.field public DEBUG:Z

.field public final mBrightnessModeLock:Ljava/lang/Object;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mIsBrightnessModeAuto:Z

.field public mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

.field public mUseScreenStatusAsyncHandle:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_mode_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mIsBrightnessModeAuto:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mBrightnessModeLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mSettingsObserver:Lcom/samsung/android/displayquality/SemDisplayQualityAP$SettingsObserver;

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "SemDisplayQualityAP"

    invoke-static {p0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public enhanceOutdoorVisibilityByLux(I)V
    .locals 0

    return-void
.end method

.method public getScreenModeSetting()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_mode_setting"

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public abstract handleAutoBrightnessModeOff()V
.end method

.method public abstract handleAutoBrightnessModeOn()V
.end method

.method public abstract handleScreenModeChanged(I)V
.end method

.method public abstract handleScreenOff()V
.end method

.method public abstract handleScreenOffAsync()V
.end method

.method public abstract handleScreenOn()V
.end method

.method public abstract handleScreenOnAsync()V
.end method

.method public isBrightnessModeAuto(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 p0, -0x2

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public setAdaptiveSync(Z)V
    .locals 0

    return-void
.end method
