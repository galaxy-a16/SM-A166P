.class public final Landroidx/work/impl/u;
.super Lp1/f;
.source "SourceFile"


# static fields
.field public static final v:Ljava/lang/String;


# instance fields
.field public final k:Landroidx/work/impl/d0;

.field public final l:Ljava/lang/String;

.field public final m:Landroidx/work/ExistingWorkPolicy;

.field public final n:Ljava/util/List;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public t:Z

.field public u:Landroidx/work/impl/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/u;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/u;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Lp1/f;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/u;->k:Landroidx/work/impl/d0;

    iput-object p2, p0, Landroidx/work/impl/u;->l:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/u;->m:Landroidx/work/ExistingWorkPolicy;

    iput-object p4, p0, Landroidx/work/impl/u;->n:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/work/impl/u;->p:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/u;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/z;

    .line 2
    iget-object p2, p2, Landroidx/work/z;->a:Ljava/util/UUID;

    .line 3
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "id.toString()"

    invoke-static {p2, p3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p3, p0, Landroidx/work/impl/u;->p:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/work/impl/u;->q:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static R(Landroidx/work/impl/u;Ljava/util/HashSet;)Z
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/u;->p:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Landroidx/work/impl/u;->S(Landroidx/work/impl/u;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/work/impl/u;->p:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static S(Landroidx/work/impl/u;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final Q()Landroidx/work/u;
    .locals 4

    iget-boolean v0, p0, Landroidx/work/impl/u;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Lq1/e;

    new-instance v1, Landroidx/work/impl/m;

    invoke-direct {v1}, Landroidx/work/impl/m;-><init>()V

    invoke-direct {v0, p0, v1}, Lq1/e;-><init>(Landroidx/work/impl/u;Landroidx/work/impl/m;)V

    iget-object v2, p0, Landroidx/work/impl/u;->k:Landroidx/work/impl/d0;

    iget-object v2, v2, Landroidx/work/impl/d0;->s:Lr1/a;

    invoke-interface {v2, v0}, Lr1/a;->b(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/work/impl/u;->u:Landroidx/work/impl/m;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already enqueued work ids ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/u;->p:Ljava/util/ArrayList;

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/u;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/u;->u:Landroidx/work/impl/m;

    return-object p0
.end method
