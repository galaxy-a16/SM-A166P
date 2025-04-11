.class public Lcom/android/server/power/HqmDataDispatcher$Timer;
.super Ljava/lang/Object;
.source "HqmDataDispatcher.java"


# instance fields
.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/HqmDataDispatcher$Timer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/HqmDataDispatcher$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    return-void
.end method

.method public stop()F
    .locals 4

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method
