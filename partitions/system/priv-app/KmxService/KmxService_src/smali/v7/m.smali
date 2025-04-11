.class public final Lv7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/t;


# static fields
.field public static final a:Lv7/m;

.field public static final b:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/m;

    invoke-direct {v0}, Lv7/m;-><init>()V

    sput-object v0, Lv7/m;->a:Lv7/m;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lv7/m;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 0

    const-string p0, "Consumer"

    invoke-static {p1, p0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Empty list"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv7/m;->listIterator(I)Lv7/s;

    sget-object p0, Lv7/k;->a:Lv7/k;

    return-object p0
.end method

.method public final listIterator(I)Lv7/s;
    .locals 0

    .line 2
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lp9/d;->v(II)V

    sget-object p0, Lv7/k;->a:Lv7/k;

    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 0

    sget-object p0, Lv7/l;->a:Lv7/l;

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lp9/d;->P(III)V

    return-object p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lv7/m;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 2
    const-string p0, "Array"

    invoke-static {p1, p0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[]"

    return-object p0
.end method
