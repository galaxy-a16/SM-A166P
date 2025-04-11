.class public final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/b;
.implements Lcom/google/android/gms/measurement/internal/z2;
.implements Lcom/google/gson/internal/l;
.implements Lc9/a;
.implements Lab/a;
.implements Leb/h;
.implements Ljb/r;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lp1/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    iput-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    invoke-virtual {p0, v0}, Lp1/c;->o(Lcom/google/android/gms/internal/measurement/s;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lp1/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    iput-object v1, p0, Lp1/c;->b:Ljava/lang/Object;

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lp1/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    aput p3, v2, v0

    iput-object v2, p0, Lp1/c;->b:Ljava/lang/Object;

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Lp1/c;->a:I

    iput-object p2, p0, Lp1/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lp1/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La4/d;La4/d;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Lp1/c;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp1/c;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/k;Landroid/app/AlertDialog;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lp1/c;->a:I

    .line 8
    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp1/c;->b:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lp1/c;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    new-instance v1, Lp1/b;

    invoke-direct {v1, p0, p1, v0}, Lp1/b;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Lp1/c;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Lp1/c;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lp1/c;->a:I

    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp1/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lp1/c;->a:I

    .line 13
    invoke-direct {p0, v0, p1, p2}, Lp1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lp1/c;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lp1/c;->b:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lr6/b;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lp1/c;->a:I

    .line 15
    iput-object p1, p0, Lp1/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr6/b;I)V
    .locals 0

    const/16 p2, 0xf

    iput p2, p0, Lp1/c;->a:I

    .line 16
    invoke-direct {p0, p1}, Lp1/c;-><init>(Lr6/b;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->g()V

    const/4 p1, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p1, [B

    :cond_0
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;

    invoke-static {p5}, Lva/n;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->A:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0xcc

    if-ne p2, v1, :cond_6

    move p2, v1

    :cond_1
    if-nez p3, :cond_6

    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v1

    check-cast v1, Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Successful upload. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v3, p2, p4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->Q()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p4}, Lb0/h;->k()V

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "queue"

    const-string v4, "rowid=?"

    invoke-virtual {p5, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p5

    if-ne p5, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p5, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Deleted fewer rows from queue than expected"

    invoke-direct {p5, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p5

    :try_start_5
    iget-object p4, p4, Lb0/h;->a:Ljava/lang/Object;

    check-cast p4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p4, p5, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw p5
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p4

    :try_start_6
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/q5;->B:Ljava/util/ArrayList;

    if-eqz p5, :cond_3

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    throw p4

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->p()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->R()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->B:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->b:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/b3;->y()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->F()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->u()V

    goto :goto_1

    :cond_5
    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/q5;->C:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    goto/16 :goto_3

    :catch_2
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i;->R()V

    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string p4, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p3, p2, p4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p2

    check-cast p2, Lc3/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string p3, "Disable upload, time"

    iget-wide p4, p0, Lcom/google/android/gms/measurement/internal/q5;->p:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p4

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Network upload failed. Will retry later. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/e5;->h:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p4

    check-cast p4, Lc3/l;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_7

    const/16 p3, 0x1ad

    if-ne p2, p3, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e5;->f:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object p3

    check-cast p3, Lc3/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/q5;->w:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    return-void

    :catchall_1
    move-exception p2

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/q5;->w:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->B()V

    throw p2
.end method

.method public final c(Lr3/h;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Lz2/b;

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lr3/h;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lr3/h;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "google.messenger"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lz2/b;->a(Landroid/os/Bundle;)Lr3/o;

    move-result-object p0

    sget-object p1, Lz2/m;->a:Lz2/m;

    sget-object v0, Le9/a;->h:Le9/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr3/o;

    invoke-direct {v1}, Lr3/o;-><init>()V

    new-instance v2, Lr3/m;

    invoke-direct {v2, p1, v0, v1}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/g;Lr3/o;)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v2}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    move-object p1, v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lc5/b;
    .locals 3

    new-instance v0, Lc5/b;

    iget-object v1, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v2, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    invoke-direct {v0, v1, p0}, Lc5/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final execute()V
    .locals 7

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld9/a;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-wide v3, v1, Ld9/a;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "fail"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v3, Lc9/b;

    iget-object v3, v3, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, v1, Ld9/a;->a:Ljava/lang/String;

    aput-object v1, v4, v5

    const-string v1, "ack"

    const-string v5, "rid=?"

    invoke-virtual {v3, v1, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 14

    const-string v0, "Could not instantiate %s"

    const-string v1, "Could not instantiate %s."

    iget-object v2, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const-string v4, "BackendRegistry"

    const/4 v5, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v2, "Context has no PackageManager."

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TransportBackendDiscovery has no service info."

    :goto_0
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Application info not found."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_5

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    const-string v10, "backend:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast v9, Ljava/lang/String;

    const-string v10, ","

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    move-object v2, v6

    :goto_5
    iput-object v2, p0, Lp1/c;->c:Ljava/lang/Object;

    :cond_6
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    const/4 p1, 0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v6, Lcom/google/android/datatransport/cct/CctBackendFactory;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :catch_2
    move-exception v1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-static {v4, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_3
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :catch_4
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :catch_5
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v5

    const-string p0, "Class %s is not found."

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_7
    invoke-static {v4, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-object v3
.end method

.method public final g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/d0;->A(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/d0;->A(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v2, v1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return v2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw p1
.end method

.method public final i(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d;

    iget-object v4, v1, Lc/d;->a:Landroid/view/View;

    if-ne v4, p1, :cond_0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d;

    iget-boolean v4, v1, Lc/d;->e:Z

    if-nez v4, :cond_4

    iget-object v4, v1, Lc/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_2

    iput-object p1, v1, Lc/d;->a:Landroid/view/View;

    goto :goto_2

    :cond_5
    new-instance v1, Lc/d;

    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, p1, v0}, Lc/d;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p0, v1, Lc/d;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, v1, Lc/d;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    iput p1, v1, Lc/d;->b:F

    iget-boolean p0, v1, Lc/d;->e:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v3, v1, Lc/d;->e:Z

    iget-object p0, v1, Lc/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 p1, 0x2

    new-array p1, p1, [F

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, p1, v2

    iget v0, v1, Lc/d;->b:F

    aput v0, p1, v3

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lc/d;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lc/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final k(Lf5/a;)V
    .locals 1

    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    const-class v0, Lf5/d;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/k;

    iget-object v0, v0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lb3/k;

    invoke-virtual {v0}, Lb3/k;->h()V

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final m(Lcom/google/firebase/messaging/r;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d3;->q(Lcom/google/firebase/messaging/r;)V

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/o;

    if-eqz v0, :cond_66

    check-cast p2, Lcom/google/android/gms/internal/measurement/o;

    iget-object v0, p2, Lcom/google/android/gms/internal/measurement/o;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o;->a:Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/s;

    :goto_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/s;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/s;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "break"

    const-string v6, "return"

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of v1, p0, Lcom/google/android/gms/internal/measurement/h;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/h;->d(Lcom/google/firebase/messaging/r;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v8

    const-string p2, "Function %s is not defined"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v8

    const-string p2, "Command not found: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    const/16 v5, 0x15

    if-eq v1, v5, :cond_7

    const/16 v5, 0x3b

    if-eq v1, v5, :cond_5

    const/16 v5, 0x34

    if-eq v1, v5, :cond_4

    const/16 v5, 0x35

    if-eq v1, v5, :cond_4

    const/16 v5, 0x37

    if-eq v1, v5, :cond_3

    const/16 v5, 0x38

    if-eq v1, v5, :cond_3

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzU:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_12

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzT:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzS:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    rem-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :cond_3
    invoke-static {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_4
    invoke-static {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    goto/16 :goto_1d

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzah:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_6

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_6
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzv:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/j;

    if-nez p2, :cond_a

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/q;

    if-nez p2, :cond_a

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/j;

    if-nez p2, :cond_a

    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :cond_a
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/q;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v9, 0x41

    const/4 v10, 0x4

    if-eq v1, v9, :cond_17

    const/16 v9, 0x9

    packed-switch v1, :pswitch_data_2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzG:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_b

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lp1/l;

    invoke-direct {v1, p1, p0, v9}, Lp1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_OF_LET must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzF:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_c

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lp1/e;

    invoke-direct {v1, v9, p1, p0}, Lp1/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_OF_CONST must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzE:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_e

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {v1, v9, p1, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    instance-of p0, p2, Ljava/lang/Iterable;

    if-eqz p0, :cond_d

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/s;->c(Lcom/google/android/gms/internal/measurement/v;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-iterable type in for...of loop."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_OF must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzD:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v10, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz p2, :cond_13

    check-cast p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object v2

    move v3, v8

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    :goto_4
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, v3}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v4, :cond_11

    check-cast v3, Lcom/google/android/gms/internal/measurement/f;

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_9

    :cond_10
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object p0, v3

    goto/16 :goto_1d

    :cond_11
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object v3

    move v4, v8

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v7

    if-ge v4, v7, :cond_12

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual {v3, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-object v2, v3

    goto :goto_4

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initializer variables in FOR_LET must be an ArrayList"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzC:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_14

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lp1/l;

    invoke-direct {v1, p1, p0, v9}, Lp1/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_IN_LET must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzB:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_15

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lp1/e;

    invoke-direct {v1, v9, p1, p0}, Lp1/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_IN_CONST must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzA:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p0, :cond_16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {v1, v9, p1, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->f()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/s;->c(Lcom/google/android/gms/internal/measurement/v;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Variable name in FOR_IN must be a string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzan:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v10, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_8

    :cond_18
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/measurement/f;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_7
    move-object p0, v1

    goto/16 :goto_1d

    :cond_1a
    :goto_8
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v2, :cond_1c

    check-cast v1, Lcom/google/android/gms/internal/measurement/f;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_9

    :cond_1b
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_7

    :cond_1c
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    goto :goto_8

    :cond_1d
    :goto_9
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    goto/16 :goto_1d

    :pswitch_d
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v4, :cond_20

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_1f

    const/16 v5, 0x32

    if-ne v1, v5, :cond_1e

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzY:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_21

    goto/16 :goto_1d

    :cond_1e
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :cond_1f
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzV:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/e;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/lang/Boolean;)V

    goto/16 :goto_12

    :cond_20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzb:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_21

    goto/16 :goto_1d

    :cond_21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :pswitch_e
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_3a

    const/16 v9, 0xf

    if-eq v1, v9, :cond_39

    const/16 v9, 0x19

    if-eq v1, v9, :cond_38

    const/16 v9, 0x29

    if-eq v1, v9, :cond_34

    const/16 v9, 0x36

    if-eq v1, v9, :cond_33

    const/16 v9, 0x39

    if-eq v1, v9, :cond_31

    const/16 v9, 0x13

    if-eq v1, v9, :cond_2e

    const/16 v9, 0x14

    if-eq v1, v9, :cond_2c

    const/16 v9, 0x3c

    if-eq v1, v9, :cond_24

    const/16 v5, 0x3d

    if-eq v1, v5, :cond_22

    packed-switch v1, :pswitch_data_3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzm:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->U:Lcom/google/android/gms/internal/measurement/f;

    goto/16 :goto_1d

    :pswitch_10
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r;->f()Lcom/google/firebase/messaging/r;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzaj:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_a

    :cond_23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_a
    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_24
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzai:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/d;

    if-eqz v1, :cond_2b

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz v1, :cond_2a

    check-cast p2, Lcom/google/android/gms/internal/measurement/d;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d;

    move v1, v8

    move v2, v1

    :goto_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v3

    if-ge v1, v3, :cond_29

    if-nez v2, :cond_26

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_c

    :cond_25
    move v2, v8

    goto :goto_d

    :cond_26
    :goto_c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/f;

    if-eqz v3, :cond_28

    move-object p0, v2

    check-cast p0, Lcom/google/android/gms/internal/measurement/f;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto/16 :goto_e

    :cond_27
    move-object p0, v2

    goto/16 :goto_1d

    :cond_28
    move v2, v4

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v1

    if-ne p0, v1, :cond_30

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/f;

    if-eqz p1, :cond_30

    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/measurement/f;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_63

    const-string p2, "continue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_e

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed SWITCH statement, case statements are not a list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed SWITCH statement, cases are not a list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzu:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->E(Ljava/lang/String;ILjava/util/List;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/s;->b(Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/m;

    move-result-object p0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/h;->a:Ljava/lang/String;

    if-nez p2, :cond_2d

    const-string p2, ""

    :cond_2d
    invoke-virtual {p1, p2, p0}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_1d

    :cond_2e
    :pswitch_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_e

    :cond_2f
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz p2, :cond_30

    check-cast p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_30
    :goto_e
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    goto/16 :goto_1d

    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->W:Lcom/google/android/gms/internal/measurement/f;

    goto/16 :goto_1d

    :cond_32
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzaf:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {p1, v6, p0}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_12

    :cond_33
    new-instance p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/List;)V

    goto/16 :goto_1d

    :cond_34
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzP:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->E(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v3

    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->k()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_36

    check-cast p2, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto :goto_f

    :cond_36
    if-eqz v3, :cond_37

    check-cast v3, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, v3}, Lcom/google/firebase/messaging/r;->h(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto :goto_f

    :cond_37
    move-object p0, v0

    :goto_f
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/f;

    if-eqz p1, :cond_43

    goto/16 :goto_1d

    :cond_38
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/s;->b(Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/m;

    move-result-object p0

    goto/16 :goto_1d

    :cond_39
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzm:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->S:Lcom/google/android/gms/internal/measurement/f;

    goto/16 :goto_1d

    :cond_3a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzc:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz v1, :cond_3c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    check-cast v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, p2, p1, v0}, Lcom/google/android/gms/internal/measurement/n;->j(Ljava/lang/String;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Function name for apply is undefined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "Function arguments for Apply are not a list found %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_12
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_40

    const/16 v2, 0x30

    if-eq v0, v2, :cond_3f

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3e

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3d

    packed-switch v0, :pswitch_data_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/d3;->K(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_10

    :pswitch_14
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/d3;->K(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_11

    :pswitch_15
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/s;->f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_11

    :pswitch_16
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/s;->e(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_11

    :cond_3d
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/s;->f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_11

    :cond_3e
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/s;->e(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    goto :goto_11

    :cond_3f
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/s;->d(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    :goto_10
    xor-int/2addr p0, v4

    goto :goto_11

    :cond_40
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/s;->d(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p0

    :goto_11
    if-eqz p0, :cond_41

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->a0:Lcom/google/android/gms/internal/measurement/e;

    goto/16 :goto_1d

    :cond_41
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->b0:Lcom/google/android/gms/internal/measurement/e;

    goto/16 :goto_1d

    :pswitch_17
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-wide/16 v5, 0x1f

    packed-switch v1, :pswitch_data_5

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_18
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzk:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    xor-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :pswitch_19
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzj:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->s(D)J

    move-result-wide v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d3;->s(D)J

    move-result-wide p0

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    and-long/2addr p0, v5

    long-to-int p0, p0

    ushr-long p0, v1, p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzi:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d3;->s(D)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    and-long/2addr p1, v5

    long-to-int p1, p1

    shr-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_13

    :pswitch_1b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzh:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    or-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_14

    :pswitch_1c
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzg:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    not-int p0, p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    :cond_42
    :goto_12
    move-object p0, p1

    goto/16 :goto_1d

    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzf:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d3;->s(D)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    and-long/2addr p1, v5

    long-to-int p1, p1

    shl-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    :cond_43
    :goto_13
    move-object p0, v0

    goto/16 :goto_1d

    :pswitch_1e
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zze:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/d3;->g(D)I

    move-result p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/g;

    and-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    :goto_14
    move-object p0, p2

    goto/16 :goto_1d

    :goto_15
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl;->zza:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v7, :cond_62

    const/16 v5, 0xe

    if-eq v1, v5, :cond_5e

    const/16 v5, 0x18

    if-eq v1, v5, :cond_5c

    const/16 v5, 0x21

    if-eq v1, v5, :cond_5a

    const/16 v5, 0x31

    if-eq v1, v5, :cond_59

    const/16 v5, 0x3a

    if-eq v1, v5, :cond_56

    const/16 v5, 0x11

    if-eq v1, v5, :cond_53

    const/16 v5, 0x12

    if-eq v1, v5, :cond_4f

    const/16 v5, 0x23

    if-eq v1, v5, :cond_4b

    const/16 v5, 0x24

    if-eq v1, v5, :cond_4b

    packed-switch v1, :pswitch_data_6

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/t;->a(Ljava/lang/String;)V

    throw v3

    :pswitch_1f
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzam:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4, v0}, Lcom/google/android/gms/internal/measurement/d3;->E(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/q;

    if-eqz v0, :cond_44

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/messaging/r;->j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto :goto_16

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "Expected string for var name. got %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzal:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_1c

    :pswitch_21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzak:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/r;

    if-eqz p1, :cond_45

    const-string p0, "undefined"

    goto :goto_17

    :cond_45
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/e;

    if-eqz p1, :cond_46

    const-string p0, "boolean"

    goto :goto_17

    :cond_46
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/g;

    if-eqz p1, :cond_47

    const-string p0, "number"

    goto :goto_17

    :cond_47
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p1, :cond_48

    const-string p0, "string"

    goto :goto_17

    :cond_48
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/m;

    if-eqz p1, :cond_49

    const-string p0, "function"

    goto :goto_17

    :cond_49
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/o;

    if-nez p1, :cond_4a

    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/f;

    if-nez p1, :cond_4a

    const-string p0, "object"

    :goto_17
    new-instance p1, Lcom/google/android/gms/internal/measurement/q;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v8

    const-string p0, "Unsupported value type %s in typeof"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzK:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz p2, :cond_4c

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d3;->I(Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p2

    if-eqz p2, :cond_4c

    check-cast p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_4c
    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/j;

    if-eqz p2, :cond_4d

    check-cast p0, Lcom/google/android/gms/internal/measurement/j;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/j;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_4d
    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p2, :cond_60

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "length"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_12

    :cond_4e
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d3;->I(Lcom/google/android/gms/internal/measurement/n;)Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v2, p2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_60

    new-instance p2, Lcom/google/android/gms/internal/measurement/q;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_50

    new-instance p0, Lcom/google/android/gms/internal/measurement/k;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    goto/16 :goto_1d

    :cond_50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rem-int/2addr p0, v2

    if-nez p0, :cond_52

    new-instance p0, Lcom/google/android/gms/internal/measurement/k;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge v8, p2, :cond_63

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    instance-of v2, p2, Lcom/google/android/gms/internal/measurement/f;

    if-nez v2, :cond_51

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/f;

    if-nez v2, :cond_51

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/measurement/k;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_18

    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to evaluate map entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "CREATE_OBJECT requires an even number of arguments, found %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_54

    new-instance p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    goto/16 :goto_1d

    :cond_54
    new-instance p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/f;

    if-nez v1, :cond_55

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p0, v8, v0}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    move v8, v1

    goto :goto_19

    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to evaluate array element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzag:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v7, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    if-eq p0, v0, :cond_58

    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->M:Lcom/google/android/gms/internal/measurement/l;

    if-eq p0, v0, :cond_58

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/d;

    if-eqz v0, :cond_57

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/g;

    if-eqz v0, :cond_57

    check-cast p0, Lcom/google/android/gms/internal/measurement/d;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->a()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/d;->r(ILcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_12

    :cond_57
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v0, :cond_42

    check-cast p0, Lcom/google/android/gms/internal/measurement/j;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/j;->h(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_12

    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "Can\'t set property %s of %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzX:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8, v0}, Lcom/google/android/gms/internal/measurement/d3;->C(Ljava/lang/String;ILjava/util/List;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->M:Lcom/google/android/gms/internal/measurement/l;

    goto/16 :goto_1d

    :cond_5a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzH:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v4, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p2, :cond_5b

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    goto/16 :goto_1d

    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v8

    const-string p0, "Expected string for get var. got %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzy:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4, v0}, Lcom/google/android/gms/internal/measurement/d3;->E(Ljava/lang/String;ILjava/util/List;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_63

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/f;

    if-nez p2, :cond_5d

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ControlValue cannot be in an expression list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzo:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lcom/google/android/gms/internal/measurement/d3;->E(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rem-int/2addr p0, v2

    if-nez p0, :cond_61

    move p0, v8

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p0, p2, :cond_60

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    instance-of v1, p2, Lcom/google/android/gms/internal/measurement/q;

    if-eqz v1, :cond_5f

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/google/firebase/messaging/r;->j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    iget-object v1, p1, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x2

    goto :goto_1b

    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "Expected string for const name. got %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    :goto_1c
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    goto :goto_1d

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v8

    const-string p2, "CONST requires an even number of arguments, found %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl;->zzd:Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-static {p0, v2, v0, v8}, Lorg/spongycastle/jcajce/provider/digest/a;->a(Lcom/google/android/gms/internal/measurement/zzbl;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    instance-of p2, p0, Lcom/google/android/gms/internal/measurement/q;

    if-eqz p2, :cond_65

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_64

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/r;->g(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/google/firebase/messaging/r;->k(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    goto/16 :goto_14

    :cond_63
    :goto_1d
    return-object p0

    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v8

    const-string p0, "Attempting to assign undefined value %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v8

    const-string p0, "Expected string for assign var. got %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_10
        :pswitch_f
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x25
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3e
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public final n()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/h3;

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/c3;->a:Landroid/net/Uri;

    const-class v0, Lcom/google/android/gms/internal/measurement/c3;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/measurement/c3;->j:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->a:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/gms/internal/measurement/b3;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/measurement/b3;-><init>(I)V

    invoke-virtual {v1, v2, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/measurement/c3;->j:Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object v8, Lcom/google/android/gms/internal/measurement/c3;->j:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v9, p0

    :goto_1
    monitor-exit v0

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->k:[Ljava/lang/String;

    array-length v2, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->a:Landroid/net/Uri;

    new-array v5, v7, [Ljava/lang/String;

    aput-object p0, v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Lcom/google/android/gms/internal/measurement/c3;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->j:Ljava/lang/Object;

    if-ne v8, v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_6
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v1, v9

    :cond_7
    const-class v2, Lcom/google/android/gms/internal/measurement/c3;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/measurement/c3;->j:Ljava/lang/Object;

    if-ne v8, v3, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/measurement/c3;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move-object v9, v1

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_3
    return-object v9

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final o(Lcom/google/android/gms/internal/measurement/s;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbl;->zzb()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Leb/h;

    invoke-interface {p0}, Leb/h;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lp1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljb/g;

    invoke-interface {p0, p1}, Ljb/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljb/r;

    invoke-interface {p0, p1}, Ljb/r;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget v0, p0, Lp1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/b;)Z

    return-void

    .line 3
    :goto_0
    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/b;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lp1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljb/g;

    invoke-interface {p0, p1}, Ljb/g;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onSuccess(Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ljb/r;

    invoke-interface {p0, p1}, Ljb/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 12

    iget v0, p0, Lp1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    invoke-static {v0}, Lt9/b;->a(Lt9/b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lva/n;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->b:Ls9/a;

    iget-object v0, v0, Ls9/a;->d:Lf9/b;

    invoke-virtual {v0}, Lf9/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "user do not agree"

    goto/16 :goto_7

    :cond_1
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "pd"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ps"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    sget v1, Lh3/a;->r:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lt9/b;->b:Ls9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "did is empty"

    invoke-static {v0}, Lv4/b;->s(Ljava/lang/String;)V

    move v0, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "pp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SAProperties"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Lt9/b;

    iget-object v0, p0, Lt9/b;->c:Landroid/content/Context;

    iget-object p0, p0, Lt9/b;->b:Ls9/a;

    invoke-static {v0, p0}, Lva/n;->J(Landroid/content/Context;Ls9/a;)V

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "et"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v0, v0, Lt9/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "guid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v5, "cd"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_5

    :cond_b
    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_d

    aget-object v10, v1, v9

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getKeyValueDLM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-le v11, v3, :cond_c

    aget-object v11, v10, v4

    aget-object v10, v10, v3

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    move-object v1, v7

    :goto_5
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1}, Lv9/a;->i(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v1, v2}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v0, Lt9/b;

    iget-object v1, v0, Lt9/b;->a:Landroid/app/Application;

    sget v2, Lh3/a;->r:I

    iget-object v0, v0, Lt9/b;->b:Ls9/a;

    invoke-static {v1, v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->l(Landroid/content/Context;ILs9/a;)Lcom/google/protobuf/b8;

    move-result-object v0

    iget-object p0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/b8;->c(Ljava/util/Map;)I

    goto :goto_8

    :cond_f
    :goto_6
    const-string p0, "Failure to send Logs : No data"

    :goto_7
    invoke-static {p0}, Lv4/b;->s(Ljava/lang/String;)V

    :goto_8
    return-void

    :goto_9
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v1, Ld/f0;

    iget-object v1, v1, Ld/f0;->b:Ljava/lang/Object;

    check-cast v1, Ls9/a;

    invoke-static {v0, v1}, Lva/n;->K(Landroid/content/Context;Ls9/a;)V

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast p0, Ld/f0;

    iget-object p0, p0, Ld/f0;->b:Ljava/lang/Object;

    check-cast p0, Ls9/a;

    invoke-static {v0, p0}, Lva/n;->J(Landroid/content/Context;Ls9/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
