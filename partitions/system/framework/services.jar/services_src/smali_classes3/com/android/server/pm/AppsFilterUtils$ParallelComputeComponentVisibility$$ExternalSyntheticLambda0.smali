.class public final synthetic Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

.field public final synthetic f$1:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pkg/PackageStateInternal;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v0, p0}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->$r8$lambda$3n1Td_lNvJzQ8828U9ZoFE7TQaU(Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;Lcom/android/server/pm/pkg/PackageStateInternal;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method
