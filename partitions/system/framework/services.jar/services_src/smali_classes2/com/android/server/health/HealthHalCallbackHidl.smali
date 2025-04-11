.class public Lcom/android/server/health/HealthHalCallbackHidl;
.super Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.source "HealthHalCallbackHidl.java"

# interfaces
.implements Lcom/android/server/health/HealthServiceWrapperHidl$Callback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/server/health/HealthHalCallbackHidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 54
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 58
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .locals 4

    .line 82
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 84
    iget-object v1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iput-object p1, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    const/4 p1, -0x1

    .line 86
    iput p1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const-wide/16 v2, -0x1

    .line 87
    iput-wide v2, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 93
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .locals 1

    .line 101
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 103
    iput-object p1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 107
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p3, "HealthUnregisterCallback"

    .line 123
    invoke-static {p3}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 126
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    :try_start_1
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    :goto_0
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 140
    throw p0

    .line 139
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    const-string p1, "HealthRegisterCallback"

    .line 142
    invoke-static {p1}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    .line 144
    :try_start_2
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 146
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "health: cannot register callback: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    return-void

    .line 151
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :goto_2
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 153
    :try_start_4
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "health: cannot register callback (transaction error): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    .line 155
    :goto_4
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 156
    throw p0
.end method

.method public sehHealthInfoChanged_2_1(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {p1}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method
