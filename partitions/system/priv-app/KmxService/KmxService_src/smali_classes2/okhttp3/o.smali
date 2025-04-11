.class public final Lokhttp3/o;
.super Lokhttp3/i0;
.source "SourceFile"


# static fields
.field public static final c:Lokhttp3/w;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/o;->c:Lokhttp3/w;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/i0;-><init>()V

    invoke-static {p1}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/o;->a:Ljava/util/List;

    invoke-static {p2}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/o;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkc/f;Z)J
    .locals 4

    if-eqz p2, :cond_0

    new-instance p1, Lkc/e;

    invoke-direct {p1}, Lkc/e;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lkc/f;->c()Lkc/e;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lokhttp3/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x26

    invoke-virtual {p1, v3}, Lkc/e;->h0(I)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lkc/e;->C0(Ljava/lang/String;)V

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Lkc/e;->h0(I)V

    iget-object v3, p0, Lokhttp3/o;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lkc/e;->C0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v0, p1, Lkc/e;->b:J

    invoke-virtual {p1}, Lkc/e;->a()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0

    :cond_4
    invoke-static {}, Li4/f;->M()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lokhttp3/o;->a(Lkc/f;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/w;
    .locals 0

    sget-object p0, Lokhttp3/o;->c:Lokhttp3/w;

    return-object p0
.end method

.method public final writeTo(Lkc/f;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/o;->a(Lkc/f;Z)J

    return-void
.end method
