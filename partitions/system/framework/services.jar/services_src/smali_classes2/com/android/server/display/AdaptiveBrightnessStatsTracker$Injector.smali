.class Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessStatsTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtimeMillis()J
    .locals 2

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalDate()Ljava/time/LocalDate;
    .locals 0

    .line 548
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .locals 0

    .line 544
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p0

    return p0
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .locals 0

    .line 540
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p0

    return p0
.end method
