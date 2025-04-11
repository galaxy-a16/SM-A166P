.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/b;->b:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lw1/b;->c:Ljava/lang/String;

    iput-wide p3, p0, Lw1/b;->d:J

    iput-wide p5, p0, Lw1/b;->e:J

    iput-wide p7, p0, Lw1/b;->f:J

    iput-wide p9, p0, Lw1/b;->g:J

    iput-object p11, p0, Lw1/b;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lv1/a;)V
    .locals 13

    iget-object v2, p2, Lv1/a;->b:Ljava/lang/String;

    iget-wide v3, p2, Lv1/a;->c:J

    iget-wide v5, p2, Lv1/a;->d:J

    iget-wide v7, p2, Lv1/a;->e:J

    iget-wide v9, p2, Lv1/a;->f:J

    .line 2
    iget-object v0, p2, Lv1/a;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v0

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lv1/a;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v11, Lv1/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lv1/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v11}, Lw1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method public static a(Lw1/c;)Lw1/b;
    .locals 16

    invoke-static/range {p0 .. p0}, Lw1/d;->i(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_3

    invoke-static/range {p0 .. p0}, Lw1/d;->k(Lw1/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lw1/d;->k(Lw1/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lw1/d;->j(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lw1/d;->j(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lw1/d;->j(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lw1/d;->j(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static/range {p0 .. p0}, Lw1/d;->i(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v13, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-static/range {p0 .. p0}, Lw1/d;->k(Lw1/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lw1/d;->k(Lw1/c;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lv1/d;

    invoke-direct {v15, v2, v14}, Lv1/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lw1/b;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lw1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "readHeaderList size="

    invoke-static {v2, v0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final b([B)Lv1/a;
    .locals 4

    new-instance v0, Lv1/a;

    invoke-direct {v0}, Lv1/a;-><init>()V

    iput-object p1, v0, Lv1/a;->a:[B

    iget-object p1, p0, Lw1/b;->c:Ljava/lang/String;

    iput-object p1, v0, Lv1/a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lw1/b;->d:J

    iput-wide v1, v0, Lv1/a;->c:J

    iget-wide v1, p0, Lw1/b;->e:J

    iput-wide v1, v0, Lv1/a;->d:J

    iget-wide v1, p0, Lw1/b;->f:J

    iput-wide v1, v0, Lv1/a;->e:J

    iget-wide v1, p0, Lw1/b;->g:J

    iput-wide v1, v0, Lv1/a;->f:J

    new-instance p1, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p1, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object p0, p0, Lw1/b;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/d;

    iget-object v3, v2, Lv1/d;->a:Ljava/lang/String;

    iget-object v2, v2, Lv1/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lv1/a;->g:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lv1/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/io/BufferedOutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lw1/d;->m(Ljava/io/BufferedOutputStream;I)V

    iget-object v0, p0, Lw1/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lw1/d;->o(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lw1/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p1, v0}, Lw1/d;->o(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lw1/b;->d:J

    invoke-static {p1, v3, v4}, Lw1/d;->n(Ljava/io/BufferedOutputStream;J)V

    iget-wide v3, p0, Lw1/b;->e:J

    invoke-static {p1, v3, v4}, Lw1/d;->n(Ljava/io/BufferedOutputStream;J)V

    iget-wide v3, p0, Lw1/b;->f:J

    invoke-static {p1, v3, v4}, Lw1/d;->n(Ljava/io/BufferedOutputStream;J)V

    iget-wide v3, p0, Lw1/b;->g:J

    invoke-static {p1, v3, v4}, Lw1/d;->n(Ljava/io/BufferedOutputStream;J)V

    iget-object p0, p0, Lw1/b;->h:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw1/d;->m(Ljava/io/BufferedOutputStream;I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/d;

    iget-object v3, v0, Lv1/d;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Lw1/d;->o(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    iget-object v0, v0, Lv1/d;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lw1/d;->o(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v2}, Lw1/d;->m(Ljava/io/BufferedOutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "%s"

    invoke-static {p0, p1}, Lv1/m;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
