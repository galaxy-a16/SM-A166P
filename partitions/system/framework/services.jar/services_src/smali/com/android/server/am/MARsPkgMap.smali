.class public Lcom/android/server/am/MARsPkgMap;
.super Ljava/lang/Object;
.source "MARsPkgMap.java"


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 26
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p3
.end method

.method public remove(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p2

    .line 36
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public totalSize()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v0

    .line 60
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
