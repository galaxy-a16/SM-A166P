.class public Lcom/android/server/am/AppProfiler$2;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 1724
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$2;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .locals 5

    .line 1726
    iget p0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v0, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1729
    :cond_1
    iget-wide p0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v3, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long p2, p0, v3

    if-eqz p2, :cond_3

    cmp-long p0, p0, v3

    if-gez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1724
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler$2;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p0

    return p0
.end method
