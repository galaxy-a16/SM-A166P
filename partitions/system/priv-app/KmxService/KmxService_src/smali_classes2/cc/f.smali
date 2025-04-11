.class public final Lcc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lokhttp3/internal/connection/i;

.field public final c:Ljava/util/List;

.field public final d:I

.field public final e:Lokhttp3/internal/connection/d;

.field public final f:Lokhttp3/e0;

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/i;Ljava/util/List;ILokhttp3/internal/connection/d;Lokhttp3/e0;III)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/f;->b:Lokhttp3/internal/connection/i;

    iput-object p2, p0, Lcc/f;->c:Ljava/util/List;

    iput p3, p0, Lcc/f;->d:I

    iput-object p4, p0, Lcc/f;->e:Lokhttp3/internal/connection/d;

    iput-object p5, p0, Lcc/f;->f:Lokhttp3/e0;

    iput p6, p0, Lcc/f;->g:I

    iput p7, p0, Lcc/f;->h:I

    iput p8, p0, Lcc/f;->i:I

    return-void
.end method

.method public static a(Lcc/f;ILokhttp3/internal/connection/d;Lokhttp3/e0;I)Lcc/f;
    .locals 9

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcc/f;->d:I

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcc/f;->e:Lokhttp3/internal/connection/d;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcc/f;->f:Lokhttp3/e0;

    :cond_2
    move-object v5, p3

    and-int/lit8 p1, p4, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lcc/f;->g:I

    move v6, p1

    goto :goto_0

    :cond_3
    move v6, p2

    :goto_0
    and-int/lit8 p1, p4, 0x10

    if-eqz p1, :cond_4

    iget p1, p0, Lcc/f;->h:I

    move v7, p1

    goto :goto_1

    :cond_4
    move v7, p2

    :goto_1
    and-int/lit8 p1, p4, 0x20

    if-eqz p1, :cond_5

    iget p1, p0, Lcc/f;->i:I

    move v8, p1

    goto :goto_2

    :cond_5
    move v8, p2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "request"

    invoke-static {v5, p1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcc/f;

    iget-object v1, p0, Lcc/f;->b:Lokhttp3/internal/connection/i;

    iget-object v2, p0, Lcc/f;->c:Ljava/util/List;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcc/f;-><init>(Lokhttp3/internal/connection/i;Ljava/util/List;ILokhttp3/internal/connection/d;Lokhttp3/e0;III)V

    return-object p1
.end method


# virtual methods
.method public final b(Lokhttp3/e0;)Lokhttp3/k0;
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcc/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcc/f;->d:I

    if-ge v4, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_c

    iget v1, p0, Lcc/f;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Lcc/f;->a:I

    const-string v1, " must call proceed() exactly once"

    iget-object v5, p0, Lcc/f;->e:Lokhttp3/internal/connection/d;

    const-string v6, "network interceptor "

    if-eqz v5, :cond_4

    iget-object v7, v5, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/e;

    iget-object v8, p1, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {v7, v8}, Lokhttp3/internal/connection/e;->b(Lokhttp3/u;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcc/f;->a:I

    if-ne v7, v3, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/v;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/v;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must retain the same host and port"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x3a

    invoke-static {p0, v7, v8, p1, v9}, Lcc/f;->a(Lcc/f;ILokhttp3/internal/connection/d;Lokhttp3/e0;I)Lcc/f;

    move-result-object p0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/v;

    invoke-interface {p1, p0}, Lokhttp3/v;->a(Lcc/f;)Lokhttp3/k0;

    move-result-object v4

    const-string v8, "interceptor "

    if-eqz v4, :cond_b

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    iget p0, p0, Lcc/f;->a:I

    if-ne p0, v3, :cond_5

    goto :goto_3

    :cond_5
    move p0, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p0, v3

    :goto_4
    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iget-object p0, v4, Lokhttp3/k0;->g:Lokhttp3/o0;

    if-eqz p0, :cond_9

    move v2, v3

    :cond_9
    if-eqz v2, :cond_a

    return-object v4

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a response with no body"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
