.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;
.super Ljava/lang/Object;
.source "DualDarManagerImpl.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mContext:Landroid/content/Context;

    .line 282
    iput p2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicenseExpiryAlarmListener onAlarm() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDarManagerImpl"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    .line 290
    iget v2, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$LicenseExpiryAlarmListener;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const-string v1, "DUALDAR_CONTROLLER_SERVICE"

    const-string v2, "EXPIRE_TRIAL_PERIOD_TIME"

    const-string v3, "KNOXCORE_PROXY_AGENT"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
