.class public Lcom/android/server/location/nsflp/NSConnectionHelper;
.super Ljava/lang/Object;
.source "NSConnectionHelper.java"


# instance fields
.field public mBdmsgFormatMessage:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mHasNsflpFeature:Z

.field public mMonitorService:Landroid/location/INSLocationManager;

.field public mNsflpThread:Lcom/android/server/ServiceThread;


# direct methods
.method public static synthetic $r8$lambda$8UDGRWQU-t6dGIq3KGr12UxTdjg(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onMessageUpdated$5(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IODiNornDw1lbcZOsOUm_O03_6E(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onStateUpdated$0(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYawoW04BMoJeVakj2UNB9FiMkw(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/GnssStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onSatelliteStatusUpdated$3(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X7pWV52lQIQpmIoLLYqpD-wwEdA(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onPassiveLocationReported$1(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJUyBs6GgXrmhB31XblsZpovkxU(Lcom/android/server/location/nsflp/NSConnectionHelper;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onGnssEngineStatusUpdated$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$piZhicqAbVjo3rrTsA2DV0I6ibU(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onGnssEventUpdated$4(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    const-string p0, "NSConnectionHelper"

    const-string v0, "constructor"

    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onGnssEngineStatusUpdated$2(Z)V
    .locals 0

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onGnssEngineStatusUpdated(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onGnssEventUpdated$4(Ljava/lang/String;)V
    .locals 0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onGnssEventUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onMessageUpdated$5(Landroid/os/Message;)V
    .locals 0

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 158
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onMessageUpdated(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onPassiveLocationReported$1(Landroid/location/Location;)V
    .locals 0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onPassiveLocationReported(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSatelliteStatusUpdated$3(Landroid/location/GnssStatus;)V
    .locals 0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$onStateUpdated$0(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0, p1, p2}, Landroid/location/INSLocationManager;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NSConnectionHelper"

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final isBdmsgFormatMessage(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "\n"

    const-string v1, ""

    .line 143
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[,*]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 145
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "FORMAT_MSG"

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v1

    :cond_1
    return p0
.end method

.method public onGnssEngineStatusUpdated(Z)V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 92
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onGnssEventUpdated(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 126
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->isBdmsgFormatMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageUpdated(Landroid/os/Message;)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 155
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onPassiveLocationReported(Landroid/location/Location;)V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 75
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 109
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/GnssStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/location/INSLocationManager;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NsflpThread"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 49
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 50
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    .line 51
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 59
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public sendSupportedBdmsgFormat()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFeature(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    return-void
.end method
