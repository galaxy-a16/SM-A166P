.class public final Lkotlinx/serialization/json/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# static fields
.field public static final a:Lkotlinx/serialization/json/u;

.field public static final b:Lkotlinx/serialization/descriptors/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/json/u;

    invoke-direct {v0}, Lkotlinx/serialization/json/u;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/u;->a:Lkotlinx/serialization/json/u;

    sget-object v0, Lkotlinx/serialization/descriptors/m;->a:Lkotlinx/serialization/descriptors/m;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/g;

    const-string v2, "kotlinx.serialization.json.JsonNull"

    invoke-static {v2, v0, v1}, Lkotlinx/serialization/descriptors/k;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/n;[Lkotlinx/serialization/descriptors/g;)Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/u;->b:Lkotlinx/serialization/descriptors/h;

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

    invoke-interface {p1}, Lzb/c;->i()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lzb/c;->A()V

    sget-object p0, Lkotlinx/serialization/json/t;->INSTANCE:Lkotlinx/serialization/json/t;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/json/internal/JsonDecodingException;

    const-string p1, "Expected \'null\' literal"

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonDecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/u;->b:Lkotlinx/serialization/descriptors/h;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/t;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp9/d;->b(Lzb/d;)V

    invoke-interface {p1}, Lzb/d;->d()V

    return-void
.end method
