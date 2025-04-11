.class public abstract Lc3/i;
.super Lc3/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/b;


# instance fields
.field public final y:Ljava/util/Set;

.field public final z:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILc3/f;Lb3/d;Lb3/i;)V
    .locals 9

    invoke-static {p1}, Lc3/j0;->a(Landroid/content/Context;)Lc3/j0;

    move-result-object v3

    sget-object v4, La3/e;->d:La3/e;

    invoke-static {p5}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-static {p6}, Lva/n;->i(Ljava/lang/Object;)V

    new-instance v6, Lp5/c;

    const/16 v0, 0x11

    invoke-direct {v6, p5, v0}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lf9/b;

    const/16 p5, 0x10

    invoke-direct {v7, p6, p5}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iget-object v8, p4, Lc3/f;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lc3/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc3/j0;La3/f;ILc3/b;Lc3/c;Ljava/lang/String;)V

    iget-object p1, p4, Lc3/f;->a:Landroid/accounts/Account;

    iput-object p1, p0, Lc3/i;->z:Landroid/accounts/Account;

    iget-object p1, p4, Lc3/f;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lc3/i;->y:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lc3/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc3/i;->y:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final j()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lc3/i;->z:Landroid/accounts/Account;

    return-object p0
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final n()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lc3/i;->y:Ljava/util/Set;

    return-object p0
.end method
