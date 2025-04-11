.class public final Lv7/f;
.super Lv7/g;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p3}, Lv7/g;-><init>([Ljava/lang/Object;)V

    iput p1, p0, Lv7/f;->b:I

    iput p2, p0, Lv7/f;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lv7/f;->b:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lv7/f;->c:I

    return p0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lv7/g;->listIterator(I)Lv7/s;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv7/g;->e(II)Lv7/t;

    move-result-object p0

    return-object p0
.end method

.method public final t()Lv7/t;
    .locals 1

    new-instance v0, Lv7/g;

    invoke-virtual {p0}, Lv7/g;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lv7/g;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
