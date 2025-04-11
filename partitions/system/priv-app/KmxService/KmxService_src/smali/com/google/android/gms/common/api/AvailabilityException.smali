.class public Lcom/google/android/gms/common/api/AvailabilityException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final zaa:Ll/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    return-void
.end method


# virtual methods
.method public getConnectionResult(Lcom/google/android/gms/common/api/d;)La3/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d;",
            ")",
            "La3/b;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p1, Lb3/a;->b:Lva/f;

    .line 5
    iget-object v2, v2, Lva/f;->c:Ljava/lang/Object;

    .line 6
    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3a

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "The given API ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") was not part of the availability request."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lva/n;->b(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    .line 8
    invoke-virtual {p0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    check-cast p0, La3/b;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/g;)La3/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "La3/b;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/api/d;

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/common/api/d;->e:Lb3/a;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p1, Lb3/a;->b:Lva/f;

    .line 14
    iget-object v2, v2, Lva/f;->c:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3a

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "The given API ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") was not part of the availability request."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lva/n;->b(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    .line 17
    invoke-virtual {p0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 18
    check-cast p0, La3/b;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    invoke-virtual {v1}, Ll/b;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ll/g;

    invoke-virtual {v1}, Ll/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Ll/b;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La3/b;

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    iget v6, v5, La3/b;->b:I

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    xor-int/2addr v6, v2

    and-int/2addr v3, v6

    iget-object v4, v4, Lb3/a;->b:Lva/f;

    iget-object v4, v4, Lva/f;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_2

    const-string v1, "None of the queried APIs are available. "

    goto :goto_2

    :cond_2
    const-string v1, "Some of the queried APIs are unavailable. "

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
