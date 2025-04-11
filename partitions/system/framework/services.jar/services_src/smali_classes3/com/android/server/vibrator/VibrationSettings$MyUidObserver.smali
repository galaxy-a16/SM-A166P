.class final Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;
.super Landroid/app/UidObserver;
.source "VibrationSettings.java"


# instance fields
.field public final mProcStatesCache:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 777
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public isUidForeground(I)Z
    .locals 2

    .line 780
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onUidGone(IZ)V
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$MyUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
