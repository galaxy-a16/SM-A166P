.class public final Lcom/android/server/trust/TrustManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TrustManagerService.java"


# instance fields
.field public final LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

.field public final TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mIsAutomotive:Z

.field public mLockWhenTrustLost:Z

.field public mTrustAgentsNonrenewableTrust:Z

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V
    .locals 1

    .line 357
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 358
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p2, "trust_agents_extend_unlock"

    .line 342
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const-string p2, "lock_screen_when_trust_lost"

    .line 345
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    .line 360
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.type.automotive"

    .line 361
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    .line 363
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 364
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    return-void
.end method


# virtual methods
.method public getLockWhenTrustLost()Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    return p0
.end method

.method public getTrustAgentsNonrenewableTrust()Z
    .locals 0

    .line 407
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 385
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 388
    iget-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    xor-int/2addr p1, v0

    .line 390
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    const-string/jumbo v3, "trust_agents_extend_unlock"

    .line 391
    invoke-static {p2, v3, p1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    goto :goto_2

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 397
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result p2

    const-string v2, "lock_screen_when_trust_lost"

    .line 398
    invoke-static {p1, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public updateContentObserver()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 379
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
