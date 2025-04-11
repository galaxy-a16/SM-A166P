.class public final Lv7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/t;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lp9/d;->O(II)V

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lv7/i;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv7/i;->listIterator(I)Lv7/s;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Lv7/s;
    .locals 2

    .line 2
    new-instance v0, Lv7/e;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lp9/d;->v(II)V

    invoke-direct {v0, p0, p1, v1}, Lv7/e;-><init>(Lv7/t;II)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    new-instance v0, Lv7/h;

    invoke-direct {v0, p0}, Lv7/h;-><init>(Lv7/i;)V

    return-object v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lp9/d;->P(III)V

    if-ne p2, p1, :cond_0

    sget-object p0, Lv7/m;->a:Lv7/m;

    :cond_0
    return-object p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 2
    const-string v0, "Array"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    aput-object p0, p1, v0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lv7/i;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
