.class final Landroidx/room/AmbiguousColumnResolver$resolve$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/d;"
    }
.end annotation


# instance fields
.field final synthetic $mapping:[Ljava/lang/String;

.field final synthetic $mappingIndex:I

.field final synthetic $mappingMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/room/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroidx/room/a;",
            ">;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mapping:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingMatches:Ljava/util/List;

    iput p3, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingIndex:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->invoke(IILjava/util/List;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "resultColumnsSublist"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mapping:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object p3, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingMatches:Ljava/util/List;

    iget p0, p0, Landroidx/room/AmbiguousColumnResolver$resolve$1$1;->$mappingIndex:I

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p3, Landroidx/room/a;

    new-instance v0, Lxb/f;

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, p1, p2}, Lxb/f;-><init>(II)V

    invoke-direct {p3, v0, v1}, Landroidx/room/a;-><init>(Lxb/f;Ljava/util/List;)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
