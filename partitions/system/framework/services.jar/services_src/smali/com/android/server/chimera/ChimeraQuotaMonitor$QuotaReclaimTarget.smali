.class public Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;
.super Ljava/lang/Object;
.source "ChimeraQuotaMonitor.java"


# instance fields
.field public final killTargets:Ljava/util/List;

.field public final releaseTarget:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;->killTargets:Ljava/util/List;

    iput-wide p2, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;->releaseTarget:J

    return-void
.end method
