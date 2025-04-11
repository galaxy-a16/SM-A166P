.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplaySolutionService.java"


# instance fields
.field public final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_URI:Landroid/net/Uri;

.field public resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 177
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 171
    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "screen_brightness"

    .line 173
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness_mode"

    .line 174
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 181
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mplatform_brightness_value_changed(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 186
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmCurrentAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmCurrentAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    .line 199
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 200
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$fgetmCurrentAutoCurrentLimitValue(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mupdateAdaptiveControlStateInt(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;I)V

    :cond_3
    return-void
.end method
