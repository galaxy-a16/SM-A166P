.class public final Lcom/google/android/gms/internal/measurement/x4;
.super Lcom/google/android/gms/internal/measurement/k;
.source "SourceFile"


# instance fields
.field public final b:Lp1/v;


# direct methods
.method public constructor <init>(Lp1/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/x4;->b:Lp1/v;

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-string v8, "setEventName"

    const-string v9, "setParamValue"

    const-string v10, "getParams"

    const-string v11, "getParamValue"

    const-string v12, "getTimestamp"

    const-string v13, "getEventName"

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v5, p0

    move v3, v6

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v5, p0

    move v3, v14

    goto :goto_2

    :sswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v5, p0

    move v3, v15

    goto :goto_2

    :sswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v5, p0

    move v3, v7

    goto :goto_2

    :sswitch_5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    move-object/from16 v5, p0

    :goto_2
    iget-object v4, v5, Lcom/google/android/gms/internal/measurement/x4;->b:Lp1/v;

    if-eqz v3, :cond_a

    if-eq v3, v15, :cond_8

    if-eq v3, v14, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_1

    invoke-super/range {p0 .. p3}, Lcom/google/android/gms/internal/measurement/k;->j(Ljava/lang/String;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v9, v14, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    iget-object v2, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d3;->y(Lcom/google/android/gms/internal/measurement/n;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v1

    :cond_3
    invoke-static {v8, v15, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->M:Lcom/google/android/gms/internal/measurement/l;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal event name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/b;->b:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v10, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/measurement/k;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/d3;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/k;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto :goto_4

    :cond_7
    return-object v1

    :cond_8
    invoke-static {v11, v15, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d3;->k(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v13, v0, v2}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
