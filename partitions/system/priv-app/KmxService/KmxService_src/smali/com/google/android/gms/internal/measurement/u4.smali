.class public final Lcom/google/android/gms/internal/measurement/u4;
.super Lcom/google/android/gms/internal/measurement/w4;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/u4;->c:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/t4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t4;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/t4;->d()Lcom/google/android/gms/internal/measurement/t4;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/u4;->c:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/l5;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/q4;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/measurement/q4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/t4;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/s4;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/measurement/s4;-><init>(I)V

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/l5;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/q4;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p4

    :goto_0
    move-object v0, p4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/u4;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/w5;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/measurement/s4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/s4;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/measurement/w5;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/s4;->size()I

    move-result p4

    invoke-virtual {v1, p4, v0}, Lcom/google/android/gms/internal/measurement/s4;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :goto_2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/l5;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/q4;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/q4;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p4

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p4

    goto :goto_0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p4, :cond_6

    if-lez v1, :cond_6

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-gtz p4, :cond_7

    goto :goto_4

    :cond_7
    move-object p0, v0

    :goto_4
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
