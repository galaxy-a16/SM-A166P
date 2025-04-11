.class public final synthetic Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->$r8$lambda$KuSGRX5RvpyZiWhVjROtGYitUrY(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method
