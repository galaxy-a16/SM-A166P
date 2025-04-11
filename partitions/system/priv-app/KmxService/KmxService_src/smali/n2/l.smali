.class public final Ln2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/d;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La5/c;La5/i;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v5, p1, La5/c;->c:Ljava/util/Set;

    .line 3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La5/l;

    .line 4
    iget v7, v6, La5/l;->c:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    move v10, v9

    :goto_1
    const/4 v11, 0x2

    .line 5
    iget v12, v6, La5/l;->b:I

    iget-object v6, v6, La5/l;->a:La5/r;

    if-eqz v10, :cond_3

    if-ne v12, v11, :cond_1

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    if-eqz v8, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne v7, v11, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    move v7, v9

    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-ne v12, v11, :cond_6

    goto :goto_4

    :cond_6
    move v8, v9

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p1, La5/c;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const-class v5, Lg5/b;

    invoke-static {v5}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->b:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->e:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->c:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->f:Ljava/lang/Object;

    iput-object p1, p0, Ln2/l;->d:Ljava/lang/Object;

    iput-object p2, p0, Ln2/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll5/a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Ll5/a;->a:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Ln2/l;->d:Ljava/lang/Object;

    iget-object v0, p1, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iput-object v0, p0, Ln2/l;->e:Ljava/lang/Object;

    iget-object v0, p1, Ll5/a;->c:Ljava/lang/String;

    iput-object v0, p0, Ln2/l;->c:Ljava/lang/Object;

    iget-object v0, p1, Ll5/a;->d:Ljava/lang/String;

    iput-object v0, p0, Ln2/l;->f:Ljava/lang/Object;

    iget-wide v0, p1, Ll5/a;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->a:Ljava/lang/Object;

    iget-wide v0, p1, Ll5/a;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ln2/l;->b:Ljava/lang/Object;

    iget-object p1, p1, Ll5/a;->g:Ljava/lang/String;

    iput-object p1, p0, Ln2/l;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr6/b;Lw5/h;)V
    .locals 3

    .line 9
    iput-object p1, p0, Ln2/l;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ldagger/internal/c;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Ldagger/internal/c;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Ln2/l;->a:Ljava/lang/Object;

    sget-object p1, Lfc/k;->l:Lcom/google/gson/internal/c;

    invoke-static {p1}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Ln2/l;->b:Ljava/lang/Object;

    iget-object p2, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast p2, Lob/a;

    .line 12
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;

    const/4 v1, 0x3

    invoke-direct {v0, p2, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/h;-><init>(Lob/a;Lob/a;I)V

    .line 13
    invoke-static {v0}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Ln2/l;->e:Ljava/lang/Object;

    iget-object p1, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast p1, Lob/a;

    iget-object p2, p0, Ln2/l;->b:Ljava/lang/Object;

    check-cast p2, Lob/a;

    .line 14
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/h;

    const/4 v2, 0x2

    invoke-direct {v0, p1, p2, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/h;-><init>(Lob/a;Lob/a;I)V

    .line 15
    invoke-static {v0}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Ln2/l;->c:Ljava/lang/Object;

    iget-object p1, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast p1, Lob/a;

    .line 16
    new-instance p2, Lc6/b;

    invoke-direct {p2, p1, v2}, Lc6/b;-><init>(Lob/a;I)V

    .line 17
    invoke-static {p2}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Ln2/l;->f:Ljava/lang/Object;

    iget-object p2, p0, Ln2/l;->e:Ljava/lang/Object;

    check-cast p2, Lob/a;

    iget-object v0, p0, Ln2/l;->c:Ljava/lang/Object;

    check-cast v0, Lob/a;

    .line 18
    new-instance v2, Ly5/b;

    invoke-direct {v2, p2, v0, p1, v1}, Ly5/b;-><init>(Lob/a;Lob/a;Lob/a;I)V

    .line 19
    invoke-static {v2}, Ldagger/internal/a;->b(Ldagger/internal/b;)Lob/a;

    move-result-object p1

    iput-object p1, p0, Ln2/l;->d:Ljava/lang/Object;

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "instance cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(La5/r;)Lj5/a;
    .locals 2

    iget-object v0, p0, Ln2/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    check-cast p0, La5/d;

    invoke-interface {p0, p1}, La5/d;->a(La5/r;)Lj5/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Provider<%s>."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(La5/r;)Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ln2/l;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    check-cast p0, La5/d;

    invoke-interface {p0, p1}, La5/d;->b(La5/r;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Set<%s>."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(La5/r;)Lj5/a;
    .locals 2

    iget-object v0, p0, Ln2/l;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    check-cast p0, La5/d;

    invoke-interface {p0, p1}, La5/d;->c(La5/r;)Lj5/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(La5/r;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    check-cast p0, La5/d;

    invoke-interface {p0, p1}, La5/d;->d(La5/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency %s."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/Class;)Lj5/a;
    .locals 0

    invoke-static {p1}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/l;->a(La5/r;)Lj5/a;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ll5/a;
    .locals 12

    iget-object v0, p0, Ln2/l;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ln2/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    invoke-static {v0, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ll5/a;

    iget-object v1, p0, Ln2/l;->d:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Ln2/l;->e:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object v1, p0, Ln2/l;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v1, p0, Ln2/l;->f:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v1, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Ln2/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    move-object v11, p0

    check-cast v11, Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Ll5/a;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lv4/i;
    .locals 9

    new-instance v8, Lv4/i;

    iget-object v0, p0, Ln2/l;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Ln2/l;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Ln2/l;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Ln2/l;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Ln2/l;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Ln2/l;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object p0, p0, Ln2/l;->g:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lv4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln2/l;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, La5/r;->a(Ljava/lang/Class;)La5/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln2/l;->g:Ljava/lang/Object;

    check-cast v0, La5/d;

    invoke-interface {v0, p1}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lg5/b;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, La5/s;

    iget-object p0, p0, Ln2/l;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast v0, Lg5/b;

    invoke-direct {p1, p0}, La5/s;-><init>(Ljava/util/Set;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency %s."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln2/l;->e:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null registrationStatus"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
