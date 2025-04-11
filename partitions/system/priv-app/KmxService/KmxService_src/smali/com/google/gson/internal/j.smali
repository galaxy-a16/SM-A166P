.class public abstract Lcom/google/gson/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lcom/google/gson/internal/k;

.field public b:Lcom/google/gson/internal/k;

.field public c:I

.field public final synthetic d:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/gson/internal/j;->d:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/k;

    iget-object v0, v0, Lcom/google/gson/internal/k;->d:Lcom/google/gson/internal/k;

    iput-object v0, p0, Lcom/google/gson/internal/j;->a:Lcom/google/gson/internal/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/j;->b:Lcom/google/gson/internal/k;

    iget p1, p1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/j;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/internal/k;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/j;->a:Lcom/google/gson/internal/k;

    iget-object v1, p0, Lcom/google/gson/internal/j;->d:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/k;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/j;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/k;->d:Lcom/google/gson/internal/k;

    iput-object v1, p0, Lcom/google/gson/internal/j;->a:Lcom/google/gson/internal/k;

    iput-object v0, p0, Lcom/google/gson/internal/j;->b:Lcom/google/gson/internal/k;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/j;->a:Lcom/google/gson/internal/k;

    iget-object p0, p0, Lcom/google/gson/internal/j;->d:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/k;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/j;->b:Lcom/google/gson/internal/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/gson/internal/j;->d:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/k;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/j;->b:Lcom/google/gson/internal/k;

    iget v0, v2, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/j;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
