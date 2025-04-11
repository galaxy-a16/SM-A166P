.class public final synthetic Lt2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt2/k;

.field public final synthetic c:Lo2/j;


# direct methods
.method public synthetic constructor <init>(Lt2/k;Lo2/j;I)V
    .locals 0

    iput p3, p0, Lt2/f;->a:I

    iput-object p1, p0, Lt2/f;->b:Lt2/k;

    iput-object p2, p0, Lt2/f;->c:Lo2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lt2/f;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lt2/f;->c:Lo2/j;

    iget-object p0, p0, Lt2/f;->b:Lt2/k;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lt2/k;->b(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt2/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/concurrent/h;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-static {p0, p1}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p0, Lt2/k;->d:Lt2/a;

    iget v3, p1, Lt2/a;->b:I

    invoke-virtual {p0, v0, v2, v3}, Lt2/k;->i(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/google/android/datatransport/Priority;->values()[Lcom/google/android/datatransport/Priority;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v2, Lo2/j;->c:Lcom/google/android/datatransport/Priority;

    if-ne v6, v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v9, p1, Lt2/a;->b:I

    sub-int/2addr v9, v7

    if-gtz v9, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {}, Lo2/j;->a()Lp1/v;

    move-result-object v7

    iget-object v10, v2, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lp1/v;->n(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lp1/v;->o(Lcom/google/android/datatransport/Priority;)V

    iget-object v6, v2, Lo2/j;->b:[B

    iput-object v6, v7, Lp1/v;->c:Ljava/lang/Object;

    invoke-virtual {v7}, Lp1/v;->g()Lo2/j;

    move-result-object v6

    invoke-virtual {p0, v0, v6, v9}, Lt2/k;->i(Landroid/database/sqlite/SQLiteDatabase;Lo2/j;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/b;

    iget-wide v2, v2, Lt2/b;->a:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "event_metadata"

    const-string v2, "event_id"

    const-string v3, "name"

    const-string v4, "value"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, La5/a;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/b;

    iget-wide v1, v0, Lt2/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, v0, Lt2/b;->c:Lo2/h;

    invoke-virtual {v1}, Lo2/h;->c()Lva/m;

    move-result-object v1

    iget-wide v2, v0, Lt2/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt2/j;

    iget-object v6, v5, Lt2/j;->a:Ljava/lang/String;

    iget-object v5, v5, Lt2/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lva/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lva/m;->b()Lo2/h;

    move-result-object v1

    new-instance v4, Lt2/b;

    iget-object v0, v0, Lt2/b;->b:Lo2/j;

    invoke-direct {v4, v2, v3, v0, v1}, Lt2/b;-><init>(JLo2/j;Lo2/h;)V

    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
