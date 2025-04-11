.class public final Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# instance fields
.field public mAvailable:Z

.field public final mDetectorThread:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

.field public mPressureState:I

.field public final mPressureStateLock:Ljava/lang/Object;

.field public mRecentNandswapMS:J

.field public mTrialThrottlingMS:I

.field public final self:Lcom/android/server/chimera/PerProcessNandswap;

.field public final synthetic this$0:Lcom/android/server/chimera/PerProcessNandswap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPressureStateLock(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mPressureStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentNandswapMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrialThrottlingMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetself(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)Lcom/android/server/chimera/PerProcessNandswap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->self:Lcom/android/server/chimera/PerProcessNandswap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAvailable(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPressureState(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRecentNandswapMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTrialThrottlingMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->setTrialThrottlingMS(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;III)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mRecentNandswapMS:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mPressureStateLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mPressureState:I

    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->self:Lcom/android/server/chimera/PerProcessNandswap;

    iput p3, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    invoke-static {p2, p4, p5}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$minitMemoryPressureDetectorNative(Lcom/android/server/chimera/PerProcessNandswap;II)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-instance p1, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    invoke-direct {p1, p0, p3}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;-><init>(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread-IA;)V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mDetectorThread:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mDetectorThread:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;

    iput-boolean p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mAvailable:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final setTrialThrottlingMS(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->mTrialThrottlingMS:I

    return-void
.end method
