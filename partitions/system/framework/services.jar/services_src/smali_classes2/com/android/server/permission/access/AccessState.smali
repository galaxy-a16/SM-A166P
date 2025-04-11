.class public final Lcom/android/server/permission/access/AccessState;
.super Ljava/lang/Object;
.source "AccessState.kt"


# instance fields
.field public final systemState:Lcom/android/server/permission/access/SystemState;

.field public final userStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/SystemState;

    invoke-direct {v0}, Lcom/android/server/permission/access/SystemState;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/SystemState;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/SystemState;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessState;->systemState:Lcom/android/server/permission/access/SystemState;

    iput-object p2, p0, Lcom/android/server/permission/access/AccessState;->userStates:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/android/server/permission/access/AccessState;
    .locals 4

    iget-object v0, p0, Lcom/android/server/permission/access/AccessState;->systemState:Lcom/android/server/permission/access/SystemState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->copy()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStates:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->copy()Lcom/android/server/permission/access/UserState;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/permission/access/AccessState;

    invoke-direct {v1, v0, p0}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/SystemState;Landroid/util/SparseArray;)V

    return-object v1
.end method

.method public final getSystemState()Lcom/android/server/permission/access/SystemState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->systemState:Lcom/android/server/permission/access/SystemState;

    return-object p0
.end method

.method public final getUserStates()Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStates:Landroid/util/SparseArray;

    return-object p0
.end method
