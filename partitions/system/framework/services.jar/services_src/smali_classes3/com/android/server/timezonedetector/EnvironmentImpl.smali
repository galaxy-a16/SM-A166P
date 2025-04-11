.class public final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addDebugLogEntry(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebugLog(Ljava/io/PrintWriter;)V
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "persist.sys.timezone"

    .line 49
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceTimeZoneConfidence()I
    .locals 0

    .line 54
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result p0

    return p0
.end method

.method public runAsync(Ljava/lang/Runnable;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 61
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    .line 62
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    .line 63
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerInternal;->setTimeZone(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
