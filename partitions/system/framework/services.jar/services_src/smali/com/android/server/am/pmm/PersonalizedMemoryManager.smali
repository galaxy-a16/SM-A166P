.class public Lcom/android/server/am/pmm/PersonalizedMemoryManager;
.super Ljava/lang/Object;
.source "PersonalizedMemoryManager.java"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContext:Landroid/content/Context;

.field public mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

.field public mIsTestMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/pmm/PersonalizedMemoryManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/pmm/HeapDumpHelper;->cleanUpPath()V

    new-instance p1, Lcom/android/server/am/pmm/DmaBufLeakDetector;

    invoke-direct {p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    return-void
.end method

.method public onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$1;->$SwitchMap$com$android$server$am$pmm$PersonalizedMemoryManager$MemoryEventType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->onCheckMemoryLeak(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public receiveDmabufLeakDetectorSource(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->receiveSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mIsTestMode:Z

    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->setTestMode(Z)V

    return-void
.end method
