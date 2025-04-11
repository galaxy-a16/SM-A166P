.class public final Lcom/google/gson/internal/bind/b;
.super Lt5/b;
.source "SourceFile"


# static fields
.field public static final p:Lcom/google/gson/internal/bind/a;

.field public static final q:Lcom/google/gson/g;


# instance fields
.field public final l:Ljava/util/ArrayList;

.field public m:Ljava/lang/String;

.field public n:Lcom/google/gson/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/internal/bind/a;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/a;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/b;->p:Lcom/google/gson/internal/bind/a;

    new-instance v0, Lcom/google/gson/g;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/gson/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gson/internal/bind/b;->q:Lcom/google/gson/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/gson/internal/bind/b;->p:Lcom/google/gson/internal/bind/a;

    invoke-direct {p0, v0}, Lt5/b;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    iput-object v0, p0, Lcom/google/gson/internal/bind/b;->n:Lcom/google/gson/d;

    return-void
.end method


# virtual methods
.method public final H()Lt5/b;
    .locals 1

    sget-object v0, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-object p0
.end method

.method public final N(J)V
    .locals 1

    new-instance v0, Lcom/google/gson/g;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void
.end method

.method public final O(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/google/gson/c;

    invoke-direct {v0}, Lcom/google/gson/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    iget-object p0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b0(Ljava/lang/Number;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lt5/b;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gson/internal/bind/b;->q:Lcom/google/gson/g;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    iget-object p0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/e;->a:Lcom/google/gson/e;

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/b;->y0()Lcom/google/gson/d;

    move-result-object p0

    instance-of p0, p0, Lcom/google/gson/c;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final w0(Z)V
    .locals 1

    new-instance v0, Lcom/google/gson/g;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/g;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/bind/b;->z0(Lcom/google/gson/d;)V

    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/b;->y0()Lcom/google/gson/d;

    move-result-object p0

    instance-of p0, p0, Lcom/google/gson/f;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/b;->y0()Lcom/google/gson/d;

    move-result-object v0

    instance-of v0, v0, Lcom/google/gson/f;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y0()Lcom/google/gson/d;
    .locals 1

    iget-object p0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/d;

    return-object p0
.end method

.method public final z0(Lcom/google/gson/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/gson/e;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt5/b;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/b;->y0()Lcom/google/gson/d;

    move-result-object v0

    check-cast v0, Lcom/google/gson/f;

    iget-object v1, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/gson/internal/bind/b;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/gson/internal/bind/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/gson/internal/bind/b;->n:Lcom/google/gson/d;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/b;->y0()Lcom/google/gson/d;

    move-result-object p0

    instance-of v0, p0, Lcom/google/gson/c;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/gson/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/gson/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
