.class public final Lcom/google/android/gms/internal/measurement/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/n;
.implements Lcom/google/android/gms/internal/measurement/j;


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p0

    if-gtz p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/n;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/measurement/j;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->b()Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final f()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/measurement/c;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/measurement/c;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "concat"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "reduceRight"

    const-string v7, "push"

    const-string v8, "unshift"

    const-string v9, "splice"

    const-string v10, "reduce"

    const-string v11, "toString"

    const-string v12, "filter"

    const-string v13, "forEach"

    const-string v14, "lastIndexOf"

    const-string v15, "map"

    move-object/from16 v16, v4

    const-string v4, "pop"

    const-string v0, "join"

    const-string v2, "some"

    const-string v3, "sort"

    move-object/from16 v17, v8

    const-string v8, "every"

    move-object/from16 v18, v11

    const-string v11, "shift"

    move-object/from16 v19, v9

    const-string v9, "slice"

    move-object/from16 v20, v3

    const-string v3, "reverse"

    move-object/from16 v21, v2

    const-string v2, "indexOf"

    if-nez v5, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->c(Lcom/google/android/gms/internal/measurement/j;Lcom/google/android/gms/internal/measurement/q;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v5, v17

    :goto_0
    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    move-object/from16 v24, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v24

    goto :goto_1

    :cond_2
    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    move-object/from16 v23, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v23

    goto :goto_1

    :cond_3
    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v21

    goto :goto_1

    :cond_4
    move-object/from16 v23, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v23

    goto :goto_1

    :cond_5
    move-object/from16 v5, v17

    move-object/from16 v17, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v21

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v21

    const/16 v22, -0x1

    sparse-switch v21, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v22, 0x1

    :cond_6
    :goto_2
    move-object/from16 v5, v17

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    goto :goto_3

    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xf

    goto :goto_3

    :sswitch_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    goto :goto_3

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_3

    :sswitch_b
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    goto :goto_3

    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x13

    goto :goto_3

    :sswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    :sswitch_e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_f
    move-object/from16 v5, v20

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    goto :goto_3

    :sswitch_10
    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    :goto_3
    move/from16 v22, v1

    goto :goto_2

    :sswitch_11
    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v22, 0x2

    goto :goto_4

    :sswitch_12
    move-object/from16 v6, v16

    move-object/from16 v5, v17

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v22, 0x0

    :cond_7
    :goto_4
    move-object/from16 v6, v18

    goto :goto_5

    :sswitch_13
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v22, 0x12

    :cond_8
    :goto_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    const-string v7, ","

    move-object/from16 p1, v1

    move-object/from16 v16, v8

    move-object/from16 v1, p0

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    move-object/from16 v19, v5

    const-string v5, "Callback should be a method"

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    const-wide/16 v12, 0x0

    packed-switch v22, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/internal/measurement/f;

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_8

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :pswitch_1
    const/4 v0, 0x0

    move-object/from16 v2, p3

    invoke-static {v6, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_2
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    goto/16 :goto_27

    :cond_d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v3}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v5

    double-to-int v3, v5

    if-gez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_9

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-le v3, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    :cond_f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    new-instance v5, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_16

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v6}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_10

    move v7, v3

    :goto_a
    add-int v9, v3, v6

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v7, v9, :cond_10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v10

    invoke-virtual {v5, v10, v9}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->q(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x2

    if-le v0, v6, :cond_17

    const/4 v0, 0x2

    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v6}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/f;

    if-nez v7, :cond_15

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v9

    if-lt v7, v9, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v8}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_c
    if-lt v9, v7, :cond_13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/n;

    if-eqz v11, :cond_12

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v12, v11}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    invoke-virtual {v8, v10}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    :cond_13
    :goto_d
    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value index: "

    invoke-static {v1, v7}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    if-ge v3, v0, :cond_17

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v4

    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    move-object v0, v5

    goto/16 :goto_27

    :pswitch_3
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/d3;->G(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_18

    goto/16 :goto_26

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v3, :cond_19

    check-cast v2, Lcom/google/android/gms/internal/measurement/h;

    goto :goto_f

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v2, 0x0

    :goto_f
    new-instance v3, Lcom/google/android/gms/internal/measurement/u;

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/measurement/u;-><init>(Lcom/google/android/gms/internal/measurement/h;Lcom/google/firebase/messaging/r;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    move v2, v3

    goto :goto_10

    :pswitch_4
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    invoke-static {v10, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_22

    :cond_1b
    check-cast v0, Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->s(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/google/android/gms/internal/measurement/g;

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    const/4 v3, 0x1

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/h;->d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_23

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    invoke-static {v9, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->G(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->b()Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    goto/16 :goto_27

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    int-to-double v5, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v7

    cmpg-double v0, v7, v12

    if-gez v0, :cond_1f

    add-double/2addr v7, v5

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_11

    :cond_1f
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_11
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v2

    cmpg-double v0, v2, v12

    if-gez v0, :cond_20

    add-double/2addr v5, v2

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_12

    :cond_20
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    :cond_21
    :goto_12
    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    double-to-int v2, v7

    :goto_13
    int-to-double v3, v2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_45

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :pswitch_6
    move-object/from16 v2, p3

    const/4 v0, 0x0

    invoke-static {v11, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_20

    :cond_22
    :goto_14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/d;->q(I)V

    :goto_15
    move-object v0, v2

    goto/16 :goto_27

    :pswitch_7
    move-object/from16 v2, p3

    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-eqz v0, :cond_44

    const/4 v2, 0x0

    :goto_16
    div-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_44

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->s(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/d;->s(I)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    :cond_23
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :pswitch_8
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    goto :goto_17

    :pswitch_9
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    :goto_17
    invoke-static {v1, v4, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->o(Lcom/google/android/gms/internal/measurement/d;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    goto/16 :goto_27

    :pswitch_a
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_18

    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :pswitch_b
    move-object/from16 v2, p3

    const/4 v0, 0x0

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_20

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_14

    :pswitch_c
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {v15, v3, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-nez v2, :cond_27

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    goto/16 :goto_27

    :cond_27
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/d3;->j(Lcom/google/android/gms/internal/measurement/d;Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    goto/16 :goto_27

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->G(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    goto :goto_19

    :cond_29
    move-object/from16 v0, p1

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v5, v3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_2b

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    goto :goto_1a

    :cond_2a
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v2

    :goto_1a
    move-wide v5, v2

    cmpg-double v2, v5, v12

    if-gez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v5, v2

    :cond_2b
    cmpg-double v2, v5, v12

    if-gez v2, :cond_2c

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_1b
    if-ltz v2, :cond_2e

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->s(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/d3;->K(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :pswitch_e
    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    move-object/from16 v3, v21

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->G(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->c0:Lcom/google/android/gms/internal/measurement/q;

    goto/16 :goto_27

    :cond_2f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/l;

    if-nez v2, :cond_31

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/r;

    if-eqz v2, :cond_30

    goto :goto_1c

    :cond_30
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_1d

    :cond_31
    :goto_1c
    const-string v7, ""

    :cond_32
    :goto_1d
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_f
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v3, 0x2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/d3;->G(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    goto :goto_1e

    :cond_33
    move-object/from16 v2, p1

    :goto_1e
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/d3;->a(D)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_34

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :cond_34
    cmpg-double v0, v3, v12

    if-gez v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    int-to-double v5, v0

    add-double v12, v5, v3

    goto :goto_1f

    :cond_35
    move-wide v12, v3

    :cond_36
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    cmpg-double v6, v4, v12

    if-ltz v6, :cond_37

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/d3;->K(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result v3

    if-eqz v3, :cond_37

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_27

    :pswitch_10
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v2, 0x1

    move-object/from16 v3, v20

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v2, :cond_3a

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_39

    goto :goto_20

    :cond_39
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/d3;->j(Lcom/google/android/gms/internal/measurement/d;Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    :goto_20
    move-object/from16 v2, p1

    goto/16 :goto_15

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v2, 0x1

    move-object/from16 v3, v19

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v2, :cond_3c

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-nez v2, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    goto/16 :goto_27

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->b()Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Lcom/google/android/gms/internal/measurement/d3;->j(Lcom/google/android/gms/internal/measurement/d;Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_21

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v2, 0x1

    move-object/from16 v3, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz v2, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_23

    :cond_3d
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/d3;->j(Lcom/google/android/gms/internal/measurement/d;Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    if-eq v0, v1, :cond_3f

    :cond_3e
    :goto_22
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->b0:Lcom/google/android/gms/internal/measurement/e;

    goto :goto_27

    :cond_3f
    :goto_23
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->a0:Lcom/google/android/gms/internal/measurement/e;

    goto :goto_27

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    move-object/from16 v4, p2

    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->b()Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v4, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/f;

    if-nez v3, :cond_43

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v5

    instance-of v6, v2, Lcom/google/android/gms/internal/measurement/d;

    if-eqz v6, :cond_42

    check-cast v2, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/d;->o()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v7

    add-int/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_25

    :cond_42
    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto :goto_24

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_26
    move-object v0, v1

    :cond_45
    :goto_27
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final l()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m(I)Lcom/google/android/gms/internal/measurement/n;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Attempting to get element outside of current array"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/r;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/l;

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final q(I)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final r(ILcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    const/16 v0, 0x7ed4

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Out of bounds index: "

    invoke-static {p2, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Array too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Out of bounds index: "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
