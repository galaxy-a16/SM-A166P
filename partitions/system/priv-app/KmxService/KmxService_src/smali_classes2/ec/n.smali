.class public final Lec/n;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lec/o;

.field public final synthetic f:Z

.field public final synthetic g:Lec/e0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/o;Lec/e0;)V
    .locals 0

    iput-object p2, p0, Lec/n;->e:Lec/o;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lec/n;->f:Z

    iput-object p3, p0, Lec/n;->g:Lec/e0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 14

    iget-object v0, p0, Lec/n;->e:Lec/o;

    iget-boolean v1, p0, Lec/n;->f:Z

    iget-object p0, p0, Lec/n;->g:Lec/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "settings"

    invoke-static {p0, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, v0, Lec/o;->b:Lec/t;

    iget-object v5, v5, Lec/t;->B:Lec/a0;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lec/o;->b:Lec/t;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v7, v0, Lec/o;->b:Lec/t;

    iget-object v7, v7, Lec/t;->v:Lec/e0;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    iput-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_6

    :cond_0
    new-instance v1, Lec/e0;

    invoke-direct {v1}, Lec/e0;-><init>()V

    const-string v9, "other"

    invoke-static {v7, v9}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move v9, v8

    :goto_0
    const/16 v10, 0xa

    const/4 v11, 0x1

    if-ge v9, v10, :cond_3

    shl-int v10, v11, v9

    iget v12, v7, Lec/e0;->a:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v11, v8

    :goto_1
    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    iget-object v10, v7, Lec/e0;->b:[I

    aget v10, v10, v9

    invoke-virtual {v1, v9, v10}, Lec/e0;->b(II)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_3
    move v9, v8

    :goto_3
    if-ge v9, v10, :cond_6

    shl-int v12, v11, v9

    iget v13, p0, Lec/e0;->a:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    move v12, v11

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    if-nez v12, :cond_5

    goto :goto_5

    :cond_5
    iget-object v12, p0, Lec/e0;->b:[I

    aget v12, v12, v9

    invoke-virtual {v1, v9, v12}, Lec/e0;->b(II)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_6
    iget-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lec/e0;

    invoke-virtual {p0}, Lec/e0;->a()I

    move-result p0

    int-to-long v9, p0

    invoke-virtual {v7}, Lec/e0;->a()I

    move-result p0

    int-to-long v11, p0

    sub-long/2addr v9, v11

    iput-wide v9, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v11, 0x0

    cmp-long p0, v9, v11

    if-eqz p0, :cond_9

    iget-object p0, v0, Lec/o;->b:Lec/t;

    iget-object p0, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_7

    :cond_7
    iget-object p0, v0, Lec/o;->b:Lec/t;

    iget-object p0, p0, Lec/t;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-array v1, v8, [Lec/z;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    check-cast p0, [Lec/z;

    goto :goto_8

    :cond_8
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_7
    const/4 p0, 0x0

    :goto_8
    iput-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p0, v0, Lec/o;->b:Lec/t;

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lec/e0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "<set-?>"

    invoke-static {v1, v7}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lec/t;->v:Lec/e0;

    iget-object p0, v0, Lec/o;->b:Lec/t;

    iget-object p0, p0, Lec/t;->k:Lbc/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lec/o;->b:Lec/t;

    iget-object v7, v7, Lec/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onSettings"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lec/k;

    invoke-direct {v7, v1, v0, v4}, Lec/k;-><init>(Ljava/lang/String;Lec/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v7, v11, v12}, Lbc/c;->c(Lbc/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p0, v0, Lec/o;->b:Lec/t;

    iget-object p0, p0, Lec/t;->B:Lec/a0;

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lec/e0;

    invoke-virtual {p0, v1}, Lec/a0;->a(Lec/e0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catch_0
    move-exception p0

    :try_start_4
    iget-object v0, v0, Lec/o;->b:Lec/t;

    invoke-virtual {v0, p0}, Lec/t;->b(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_9
    monitor-exit v5

    iget-object p0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, [Lec/z;

    if-eqz p0, :cond_b

    array-length v0, p0

    :goto_a
    if-ge v8, v0, :cond_b

    aget-object v1, p0, v8

    monitor-enter v1

    :try_start_5
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-wide v5, v1, Lec/z;->d:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lec/z;->d:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    monitor-exit v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_b
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_b
    :try_start_6
    monitor-exit v6

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v5

    throw p0
.end method
