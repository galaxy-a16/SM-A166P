.class public final synthetic Lcom/android/server/chimera/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    check-cast p2, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    invoke-static {p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->$r8$lambda$V592Y0LcVFKsL5OLQ6JqI9MGlLY(Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;)I

    move-result p0

    return p0
.end method
