.class public final synthetic Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->$r8$lambda$0keGwPkIxR4m1GD-O0Dk5Yv2Ldo(ILjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method
