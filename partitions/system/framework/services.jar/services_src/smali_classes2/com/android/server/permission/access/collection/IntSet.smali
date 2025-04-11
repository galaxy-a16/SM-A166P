.class public final Lcom/android/server/permission/access/collection/IntSet;
.super Ljava/lang/Object;
.source "IntSet.kt"


# instance fields
.field public final array:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/collection/IntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public final clear()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public final copy()Lcom/android/server/permission/access/collection/IntSet;
    .locals 1

    .line 51
    new-instance v0, Lcom/android/server/permission/access/collection/IntSet;

    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/collection/IntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method

.method public final elementAt(I)I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    return p0
.end method

.method public final remove(I)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/permission/access/collection/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method
