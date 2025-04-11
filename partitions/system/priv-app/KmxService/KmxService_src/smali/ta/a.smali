.class public final synthetic Lta/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ll6/l;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ll6/l;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta/a;->a:Ll6/l;

    iput p2, p0, Lta/a;->b:I

    iput-object p3, p0, Lta/a;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lta/a;->a:Ll6/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget v5, p0, Lta/a;->b:I

    iget-object p0, p0, Lta/a;->c:Ljava/util/Set;

    if-eqz v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object p0, v0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    new-instance p1, Lja/a;

    invoke-direct {p1, v5, v4}, Lja/a;-><init>(II)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    if-nez v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Ll6/l;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    new-instance v0, Lja/a;

    invoke-direct {v0, v5, p1}, Lja/a;-><init>(II)V

    move-object p1, v0

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
