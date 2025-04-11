.class public Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;
.super Ljava/lang/Object;
.source "SnapshotController.java"


# instance fields
.field public mCloseActivity:Lcom/android/server/wm/ActivityRecord;

.field public mCloseIndex:I

.field public mOpenActivity:Lcom/android/server/wm/ActivityRecord;

.field public mOpenIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenIndex:I

    iput v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/SnapshotController$ActivityOrderCheck-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public analysisOrder(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/Task;Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p3, :cond_0

    iget-object p1, p3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->setTarget(ZLcom/android/server/wm/ActivityRecord;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p3, :cond_2

    iget-object p1, p3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->setTarget(ZLcom/android/server/wm/ActivityRecord;I)V

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget p1, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenIndex:I

    iget p2, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseIndex:I

    const/4 p3, -0x1

    if-le p1, p2, :cond_4

    if-eq p2, p3, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p2, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {p4, v1, p1, p2}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;->onCheckResult(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    :cond_4
    if-ge p1, p2, :cond_5

    if-eq p1, p3, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p2, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 p3, 0x2

    invoke-interface {p4, p3, p1, p2}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck$AnalysisResult;->onCheckResult(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenIndex:I

    iput v0, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseIndex:I

    return-void
.end method

.method public final setTarget(ZLcom/android/server/wm/ActivityRecord;I)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenActivity:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mOpenIndex:I

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseActivity:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/SnapshotController$ActivityOrderCheck;->mCloseIndex:I

    :goto_0
    return-void
.end method
