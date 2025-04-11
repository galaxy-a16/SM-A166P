.class public Lcom/samsung/iqi/IQIServiceBrokerExt;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"


# instance fields
.field public DEBUG:Z

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsOptOutTriggered:Z

.field public mLock:Ljava/lang/Object;

.field public mObserver:Landroid/database/ContentObserver;

.field public mServiceRunning:Z

.field public mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

.field public mUploadStateReceiver:Landroid/content/BroadcastReceiver;

.field public rbIqiState:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrbIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOpt(Lcom/samsung/iqi/IQIServiceBrokerExt;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsubmitSS2S(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$3;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static submitSS2S(Z)V
    .locals 3

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/ss/SS2S;-><init>()V

    xor-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/att/iqi/lib/metrics/ss/SS2S;->setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final changeIqiState(Z)V
    .locals 4

    const-string v0, "com.att.iqi.extra.IQI_STATE"

    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeIqiState: newState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IQIServiceBrokerExt"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "iqi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    const-string v3, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v2

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Lcom/android/server/SystemService;->onBootPhase(I)V

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public final getOpt()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->setOpt(I)V

    :cond_0
    return v0
.end method

.method public final registerIQIServiceStateListener()V
    .locals 3

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "IQIServiceBrokerExt"

    const-string v2, "Register IQI Service State Change Listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-direct {v1, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final setOpt(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "att_iqi_report_diagnostic"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public startIqi()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIqi opt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IQIServiceBrokerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-string v1, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    return-void
.end method
