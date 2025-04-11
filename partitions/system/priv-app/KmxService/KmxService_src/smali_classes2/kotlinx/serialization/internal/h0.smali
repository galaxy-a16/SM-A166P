.class public final Lkotlinx/serialization/internal/h0;
.super Lkotlinx/serialization/internal/v0;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Lkotlinx/serialization/internal/g0;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;I)V
    .locals 3

    iput p3, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "vSerializer"

    const-string v1, "kSerializer"

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    new-instance p3, Lkotlinx/serialization/internal/g0;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-interface {p2}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lkotlinx/serialization/internal/g0;-><init>(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/descriptors/g;I)V

    iput-object p3, p0, Lkotlinx/serialization/internal/h0;->d:Lkotlinx/serialization/internal/g0;

    return-void

    :cond_0
    invoke-static {p1, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/c;Lkotlinx/serialization/c;)V

    new-instance p3, Lkotlinx/serialization/internal/g0;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-interface {p2}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p2

    invoke-direct {p3, p1, p2, v2}, Lkotlinx/serialization/internal/g0;-><init>(Lkotlinx/serialization/descriptors/g;Lkotlinx/serialization/descriptors/g;I)V

    iput-object p3, p0, Lkotlinx/serialization/internal/h0;->d:Lkotlinx/serialization/internal/g0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    :goto_0
    mul-int/lit8 p0, p0, 0x2

    return p0

    :goto_1
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlinx/serialization/internal/h0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h0;->j(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h0;->j(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lkotlinx/serialization/internal/h0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h0;->k(Ljava/util/Map;)I

    move-result p0

    return p0

    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/h0;->k(Ljava/util/Map;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :goto_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/h0;->d:Lkotlinx/serialization/internal/g0;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :goto_0
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/util/Map;)I
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/h0;->c:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :goto_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
