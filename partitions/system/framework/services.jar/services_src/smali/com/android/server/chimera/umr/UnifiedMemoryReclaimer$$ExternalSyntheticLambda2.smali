.class public final synthetic Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;->f$0:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->$r8$lambda$7XSvT8ii5u5zNUnNfeo3kympNvY(JLjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method
