.class public Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;
.super Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;
.source "CachedAppOptimizer.java"


# instance fields
.field public final sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;->sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    return-void
.end method
