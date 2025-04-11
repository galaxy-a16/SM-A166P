.class public final Lkotlinx/serialization/json/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/m;

.field public static final b:Lkotlinx/serialization/descriptors/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/m;

    invoke-direct {v0}, Lkotlinx/serialization/json/m;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/m;->a:Lkotlinx/serialization/json/m;

    sget-object v0, Lkotlinx/serialization/descriptors/c;->b:Lkotlinx/serialization/descriptors/c;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/g;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer$descriptor$1;

    const-string v3, "kotlinx.serialization.json.JsonElement"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/k;->b(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;Lvb/b;)Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/m;->b:Lkotlinx/serialization/descriptors/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->d(Lzb/c;)Lkotlinx/serialization/json/j;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/json/j;->v()Lkotlinx/serialization/json/l;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/m;->b:Lkotlinx/serialization/descriptors/h;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/l;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    instance-of p0, p2, Lkotlinx/serialization/json/a0;

    if-eqz p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/b0;->a:Lkotlinx/serialization/json/b0;

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lkotlinx/serialization/json/w;

    if-eqz p0, :cond_1

    sget-object p0, Lkotlinx/serialization/json/y;->a:Lkotlinx/serialization/json/y;

    goto :goto_0

    :cond_1
    instance-of p0, p2, Lkotlinx/serialization/json/d;

    if-eqz p0, :cond_2

    sget-object p0, Lkotlinx/serialization/json/f;->a:Lkotlinx/serialization/json/f;

    :goto_0
    invoke-interface {p1, p0, p2}, Lzb/d;->m(Lkotlinx/serialization/c;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
