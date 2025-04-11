.class public final Lcom/android/server/permission/access/UserState;
.super Lcom/android/server/permission/access/WritableState;
.source "AccessState.kt"


# instance fields
.field public final packageAppOpModes:Landroid/util/ArrayMap;

.field public final uidAppOpModes:Landroid/util/SparseArray;

.field public final uidPermissionFlags:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/permission/access/UserState;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/permission/access/WritableState;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/UserState;->uidPermissionFlags:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/permission/access/UserState;->uidAppOpModes:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModes:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/android/server/permission/access/UserState;
    .locals 9

    iget-object v0, p0, Lcom/android/server/permission/access/UserState;->uidPermissionFlags:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_0

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/permission/access/UserState;->uidAppOpModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_2

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModes:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v4, v2

    :goto_4
    if-ge v4, p0, :cond_5

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v2

    :goto_5
    if-ge v7, v5, :cond_4

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    new-instance p0, Lcom/android/server/permission/access/UserState;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/permission/access/UserState;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public final getPackageAppOpModes()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->packageAppOpModes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getUidAppOpModes()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->uidAppOpModes:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getUidPermissionFlags()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/UserState;->uidPermissionFlags:Landroid/util/SparseArray;

    return-object p0
.end method
