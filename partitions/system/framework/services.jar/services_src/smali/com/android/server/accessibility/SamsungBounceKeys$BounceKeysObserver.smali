.class public final Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;
.super Landroid/database/ContentObserver;
.source "SamsungBounceKeys.java"


# instance fields
.field public final mBounceKeysSettingsUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungBounceKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 117
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bounce_keys_period"

    .line 112
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    .line 118
    iput p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "bounce_keys_period"

    iget v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    .line 147
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$fputmBounceKeysPeriodMilli(Lcom/android/server/accessibility/SamsungBounceKeys;J)V

    :cond_0
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 129
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ContentResolver is not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BounceKeysObserver has not been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
