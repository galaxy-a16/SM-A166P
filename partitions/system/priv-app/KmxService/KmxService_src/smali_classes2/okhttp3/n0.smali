.class public final Lokhttp3/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lokhttp3/w;)Lokhttp3/m0;
    .locals 4

    const-string v0, "$this$toResponseBody"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/c;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    sget-object v1, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "$this$toMediaTypeOrNull"

    invoke-static {p1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    new-instance v1, Lkc/e;

    invoke-direct {v1}, Lkc/e;-><init>()V

    const-string v2, "charset"

    invoke-static {v0, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lkc/e;->A0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lkc/e;

    iget-wide v2, v1, Lkc/e;->b:J

    invoke-static {v1, p1, v2, v3}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;
    .locals 1

    const-string v0, "$this$asResponseBody"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/m0;

    invoke-direct {v0, p1, p2, p3, p0}, Lokhttp3/m0;-><init>(Lokhttp3/w;JLkc/g;)V

    return-object v0
.end method

.method public static c([BLokhttp3/w;)Lokhttp3/m0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, v1, v2, p0}, Lkc/e;->O(II[B)V

    array-length p0, p0

    int-to-long v1, p0

    invoke-static {v0, p1, v1, v2}, Lokhttp3/n0;->b(Lkc/g;Lokhttp3/w;J)Lokhttp3/m0;

    move-result-object p0

    return-object p0
.end method
