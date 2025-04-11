.class public final Lkotlinx/serialization/json/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/r;

.field public static final b:Lkotlinx/serialization/internal/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlinx/serialization/json/r;

    invoke-direct {v0}, Lkotlinx/serialization/json/r;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/r;->a:Lkotlinx/serialization/json/r;

    sget-object v0, Lkotlinx/serialization/descriptors/e;->i:Lkotlinx/serialization/descriptors/e;

    const-string v1, "kotlinx.serialization.json.JsonLiteral"

    invoke-static {v1}, Lkotlin/text/r;->I(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lkotlinx/serialization/internal/f1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/c;

    check-cast v3, Lkotlin/jvm/internal/j;

    invoke-virtual {v3}, Lkotlin/jvm/internal/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlinx/serialization/internal/f1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kotlin."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1, v3}, Lkotlin/text/r;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name kotlinx.serialization.json.JsonLiteral there already exist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlinx/serialization/internal/f1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/n;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lkotlinx/serialization/internal/e1;

    invoke-direct {v2, v1, v0}, Lkotlinx/serialization/internal/e1;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)V

    sput-object v2, Lkotlinx/serialization/json/r;->b:Lkotlinx/serialization/internal/e1;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank serial names are prohibited"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->d(Lzb/c;)Lkotlinx/serialization/json/j;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/json/j;->v()Lkotlinx/serialization/json/l;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/serialization/json/q;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/serialization/json/q;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected JSON element, expected JsonLiteral, had "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lv9/a;->e(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/r;->b:Lkotlinx/serialization/internal/e1;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lkotlinx/serialization/json/q;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    iget-boolean p0, p2, Lkotlinx/serialization/json/q;->a:Z

    iget-object v0, p2, Lkotlinx/serialization/json/q;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lkotlin/text/q;->F(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ll9/b;->N0(Ljava/lang/String;)Lkotlin/o;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p2, Lkotlinx/serialization/internal/y1;->b:Lkotlinx/serialization/internal/i0;

    invoke-interface {p1, p2}, Lzb/d;->l(Lkotlinx/serialization/descriptors/g;)Lzb/d;

    move-result-object p1

    iget-wide v0, p0, Lkotlin/o;->a:J

    :goto_0
    invoke-interface {p1, v0, v1}, Lzb/d;->o(J)V

    goto :goto_3

    :cond_2
    const-string p0, "<this>"

    invoke-static {v0, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/text/m;->a:Lkotlin/text/Regex;

    invoke-virtual {p0, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lzb/d;->e(D)V

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lfc/e;->k(Lkotlinx/serialization/json/a0;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lzb/d;->h(Z)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {p1, v0}, Lzb/d;->r(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
