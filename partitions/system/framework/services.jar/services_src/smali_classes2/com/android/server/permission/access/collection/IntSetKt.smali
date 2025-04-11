.class public abstract Lcom/android/server/permission/access/collection/IntSetKt;
.super Ljava/lang/Object;
.source "IntSet.kt"


# direct methods
.method public static final IntSet([I)Lcom/android/server/permission/access/collection/IntSet;
    .locals 1

    .line 54
    new-instance v0, Lcom/android/server/permission/access/collection/IntSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/collection/IntSet;-><init>()V

    invoke-static {v0, p0}, Lcom/android/server/permission/access/collection/IntSetKt;->plusAssign(Lcom/android/server/permission/access/collection/IntSet;[I)V

    return-object v0
.end method

.method public static final plusAssign(Lcom/android/server/permission/access/collection/IntSet;Lcom/android/server/permission/access/collection/IntSet;)V
    .locals 3

    .line 75
    invoke-virtual {p1}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v2

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final plusAssign(Lcom/android/server/permission/access/collection/IntSet;[I)V
    .locals 3

    .line 167
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
