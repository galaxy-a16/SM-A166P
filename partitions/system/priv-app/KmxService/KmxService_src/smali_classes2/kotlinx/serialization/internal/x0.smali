.class public final Lkotlinx/serialization/internal/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lkotlin/collections/EmptyList;

.field public final c:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/x0;->a:Ljava/lang/Object;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lkotlinx/serialization/internal/x0;->b:Lkotlin/collections/EmptyList;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;

    const-string v2, "kotlin.Unit"

    invoke-direct {v1, v2, p0}, Lkotlinx/serialization/internal/ObjectSerializer$descriptor$2;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/x0;)V

    invoke-static {v0, v1}, Lkotlin/h;->c(Lkotlin/LazyThreadSafetyMode;Lvb/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/internal/x0;->c:Lkotlin/f;

    return-void
.end method


# virtual methods
.method public final deserialize(Lzb/c;)Ljava/lang/Object;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/x0;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lzb/c;->a(Lkotlinx/serialization/descriptors/g;)Lzb/a;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/x0;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object v1

    invoke-interface {p1, v1}, Lzb/a;->m(Lkotlinx/serialization/descriptors/g;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Lzb/a;->b(Lkotlinx/serialization/descriptors/g;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/x0;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Unexpected index "

    invoke-static {p1, v1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/x0;->c:Lkotlin/f;

    invoke-interface {p0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/g;

    return-object p0
.end method

.method public final serialize(Lzb/d;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/x0;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p2

    invoke-interface {p1, p2}, Lzb/d;->a(Lkotlinx/serialization/descriptors/g;)Lzb/b;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/x0;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lzb/b;->b(Lkotlinx/serialization/descriptors/g;)V

    return-void
.end method
