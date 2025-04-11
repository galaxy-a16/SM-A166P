.class public Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;
.super Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;
.source "CachedAppOptimizer.java"


# instance fields
.field public final processName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Ljava/lang/String;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;->processName:Ljava/lang/String;

    return-void
.end method
