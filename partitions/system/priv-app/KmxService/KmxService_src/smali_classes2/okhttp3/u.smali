.class public final Lokhttp3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:[C


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/u;->k:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/u;->b:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/u;->c:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/u;->d:Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/u;->e:Ljava/lang/String;

    iput p5, p0, Lokhttp3/u;->f:I

    iput-object p6, p0, Lokhttp3/u;->g:Ljava/util/List;

    iput-object p7, p0, Lokhttp3/u;->h:Ljava/util/List;

    iput-object p8, p0, Lokhttp3/u;->i:Ljava/lang/String;

    iput-object p9, p0, Lokhttp3/u;->j:Ljava/lang/String;

    const-string p2, "https"

    invoke-static {p1, p2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lokhttp3/u;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lokhttp3/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v3, 0x4

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-static {p0, v4, v0, v1, v3}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v2

    const/16 v2, 0x40

    const/4 v3, 0x6

    invoke-static {p0, v2, v1, v1, v3}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {p0, v3, v0, v1, v2}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "?#"

    invoke-static {v0, v1, p0, v2}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-static {p0, v3, v0, v1, v2}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "?#"

    invoke-static {v0, v1, p0, v2}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v3, v0, v1}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v5}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokhttp3/u;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    const/4 v1, 0x6

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2, v1}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x23

    invoke-static {p0, v2, v0, v1}, Lac/c;->e(Ljava/lang/String;CII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokhttp3/u;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object v0, p0, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, ":@"

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2, p0, v1}, Lac/c;->d(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokhttp3/u;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/u;

    iget-object p1, p1, Lokhttp3/u;->j:Ljava/lang/String;

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    invoke-static {p1, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 12

    const-string v0, "/..."

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokhttp3/t;

    invoke-direct {v2}, Lokhttp3/t;-><init>()V

    invoke-virtual {v2, p0, v0}, Lokhttp3/t;->d(Lokhttp3/u;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfb

    invoke-static/range {v3 .. v11}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lokhttp3/t;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v6, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v3 .. v11}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lokhttp3/t;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lokhttp3/t;->a()Lokhttp3/u;

    move-result-object p0

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public final g()Ljava/net/URI;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lokhttp3/t;

    invoke-direct {v1}, Lokhttp3/t;-><init>()V

    iget-object v2, v0, Lokhttp3/u;->b:Ljava/lang/String;

    iput-object v2, v1, Lokhttp3/t;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lokhttp3/u;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lokhttp3/t;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lokhttp3/u;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lokhttp3/t;->c:Ljava/lang/String;

    iget-object v3, v0, Lokhttp3/u;->e:Ljava/lang/String;

    iput-object v3, v1, Lokhttp3/t;->d:Ljava/lang/String;

    invoke-static {v2}, Lh5/d;->g(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lokhttp3/u;->f:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iput v3, v1, Lokhttp3/t;->e:I

    iget-object v2, v1, Lokhttp3/t;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lokhttp3/u;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lokhttp3/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/t;->c(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, v0, Lokhttp3/u;->i:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x23

    const/4 v6, 0x6

    iget-object v0, v0, Lokhttp3/u;->j:Ljava/lang/String;

    invoke-static {v0, v4, v3, v3, v6}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    iput-object v0, v1, Lokhttp3/t;->h:Ljava/lang/String;

    iget-object v0, v1, Lokhttp3/t;->d:Ljava/lang/String;

    const-string v4, ""

    if-eqz v0, :cond_2

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "[\"<>^`{|}]"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v5

    :goto_2
    iput-object v0, v1, Lokhttp3/t;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v3

    :goto_3
    if-ge v6, v0, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "[]"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe3

    invoke-static/range {v8 .. v16}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v3, v2, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "\\^`{|}"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0xc3

    invoke-static/range {v7 .. v15}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_4
    move-object v6, v5

    :goto_5
    invoke-interface {v0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v6, v1, Lokhttp3/t;->h:Ljava/lang/String;

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, " \"#<>\\^`{|}"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xa3

    invoke-static/range {v6 .. v14}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v5

    :cond_6
    iput-object v5, v1, Lokhttp3/t;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/t;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "URI.create(stripped)"

    invoke-static {v1, v2}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_6
    return-object v0

    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->j:Ljava/lang/String;

    return-object p0
.end method
