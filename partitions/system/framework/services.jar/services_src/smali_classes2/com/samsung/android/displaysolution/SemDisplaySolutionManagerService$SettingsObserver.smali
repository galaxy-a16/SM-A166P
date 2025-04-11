.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SemDisplaySolutionManagerService.java"


# instance fields
.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

.field public final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

.field public final SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

.field public resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 316
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 308
    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string p1, "high_brightness_mode_pms_enter"

    .line 310
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_mode_automatic_setting"

    .line 311
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_extra_brightness"

    .line 312
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    .line 313
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 320
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "SemDisplaySolutionManagerService"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutoBrightnessModeEnabled : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 326
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    const-string v2, "extra_brightness_on"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    const-string v2, "extra_brightness_off"

    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 333
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 334
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mHighBrightnessModeEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 336
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 337
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 338
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    :cond_4
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 339
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    .line 342
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 343
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->-$$Nest$smsysfsWrite(Ljava/lang/String;I)Z

    :cond_6
    const-string p0, "IRC Mode : moderato_mode"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method
