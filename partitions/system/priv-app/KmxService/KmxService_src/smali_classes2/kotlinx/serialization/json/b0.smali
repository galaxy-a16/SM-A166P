.class public final Lkotlinx/serialization/json/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/b0;

.field public static final b:Lkotlinx/serialization/descriptors/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/json/b0;

    invoke-direct {v0}, Lkotlinx/serialization/json/b0;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/b0;->a:Lkotlinx/serialization/json/b0;

    sget-object v0, Lkotlinx/serialization/descriptors/e;->i:Lkotlinx/serialization/descriptors/e;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/g;

    const-string v2, "kotlinx.serialization.json.JsonPrimitive"

    invoke-static {v2, v0, v1}, Lkotlinx/serialization/descriptors/k;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/b0;->b:Lkotlinx/serialization/descriptors/h;

    return-void
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

    instance-of p1, p0, Lkotlinx/serialization/json/a0;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/serialization/json/a0;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

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

    sget-object p0, Lkotlinx/serialization/json/b0;->b:Lkotlinx/serialization/descriptors/h;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/a0;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    instance-of p0, p2, Lkotlinx/serialization/json/t;

    if-eqz p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/u;->a:Lkotlinx/serialization/json/u;

    sget-object p2, Lkotlinx/serialization/json/t;->INSTANCE:Lkotlinx/serialization/json/t;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/serialization/json/r;->a:Lkotlinx/serialization/json/r;

    check-cast p2, Lkotlinx/serialization/json/q;

    :goto_0
    invoke-interface {p1, p0, p2}, Lzb/d;->m(Lkotlinx/serialization/c;Ljava/lang/Object;)V

    return-void
.end method
