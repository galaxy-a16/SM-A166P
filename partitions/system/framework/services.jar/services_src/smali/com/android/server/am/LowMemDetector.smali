.class public final Lcom/android/server/am/LowMemDetector;
.super Ljava/lang/Object;
.source "LowMemDetector.java"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAvailable:Z

.field public final mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

.field public mPressureState:I

.field public final mPressureStateLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->waitForPressure()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    const-string/jumbo v1, "ro.debuggable"

    .line 64
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 66
    new-instance p1, Lcom/android/server/am/LowMemDetector$LowMemThread;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$LowMemThread-IA;)V

    iput-object p1, p0, Lcom/android/server/am/LowMemDetector;->mLowMemThread:Lcom/android/server/am/LowMemDetector$LowMemThread;

    if-nez v1, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/android/server/am/LowMemDetector;->init()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 71
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    :goto_2
    return-void
.end method

.method private native init()I
.end method

.method private native waitForPressure()I
.end method


# virtual methods
.method public getMemFactor()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget p0, p0, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return p0
.end method
