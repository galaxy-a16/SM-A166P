.class public Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I
    .locals 3

    .line 239
    iget p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr p0, v0

    .line 240
    iget v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 246
    :cond_1
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 250
    :cond_3
    iget-boolean p1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean p2, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq p1, p2, :cond_5

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 236
    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ProcessStats$1;->compare(Lcom/android/server/enterprise/application/ProcessStats$Stats;Lcom/android/server/enterprise/application/ProcessStats$Stats;)I

    move-result p0

    return p0
.end method
