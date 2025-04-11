.class public final Lkotlinx/serialization/internal/d;
.super Lkotlinx/serialization/internal/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Lkotlinx/serialization/internal/c;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/c;I)V
    .locals 3

    iput p2, p0, Lkotlinx/serialization/internal/d;->b:I

    const-string v0, "eSerializer"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    const-string p2, "element"

    invoke-static {p1, p2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/u;-><init>(Lkotlinx/serialization/c;)V

    new-instance p2, Lkotlinx/serialization/internal/c;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-direct {p2, p1, v2}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    iput-object p2, p0, Lkotlinx/serialization/internal/d;->c:Lkotlinx/serialization/internal/c;

    return-void

    :cond_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/u;-><init>(Lkotlinx/serialization/c;)V

    new-instance p2, Lkotlinx/serialization/internal/c;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    iput-object p2, p0, Lkotlinx/serialization/internal/d;->c:Lkotlinx/serialization/internal/c;

    return-void

    :cond_1
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/u;-><init>(Lkotlinx/serialization/c;)V

    new-instance p2, Lkotlinx/serialization/internal/c;

    invoke-interface {p1}, Lkotlinx/serialization/c;->getDescriptor()Lkotlinx/serialization/descriptors/g;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lkotlinx/serialization/internal/c;-><init>(Lkotlinx/serialization/descriptors/g;I)V

    iput-object p2, p0, Lkotlinx/serialization/internal/d;->c:Lkotlinx/serialization/internal/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/d;->b:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/d;->b:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :goto_0
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    iget p0, p0, Lkotlinx/serialization/internal/d;->b:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :goto_0
    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/d;->c:Lkotlinx/serialization/internal/c;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/d;->b:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :goto_0
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lkotlinx/serialization/internal/d;->b:I

    const-string v0, "<this>"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/util/HashSet;

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :goto_0
    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
