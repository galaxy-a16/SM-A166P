.class public final Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
.super Landroid/database/ContentObserver;
.source "SamsungTapDuration.java"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mRemoveAnimationSettingUri:Landroid/net/Uri;

.field public final mTapDurationSettingUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 280
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "tap_duration_threshold"

    .line 272
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const-string/jumbo p1, "remove_animations"

    .line 274
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 281
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 326
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const-string/jumbo v2, "tap_duration_threshold"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    iput p2, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    .line 330
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    goto :goto_1

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "remove_animations"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_3

    .line 335
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 336
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 301
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 302
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 304
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    .line 308
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 298
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ClickDelayObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
