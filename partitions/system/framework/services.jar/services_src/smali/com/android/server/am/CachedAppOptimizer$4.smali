.class Lcom/android/server/am/CachedAppOptimizer$4;
.super Ljava/util/LinkedList;
.source "CachedAppOptimizer.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$4;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$4;->add(Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;)Z

    move-result p0

    return p0
.end method
