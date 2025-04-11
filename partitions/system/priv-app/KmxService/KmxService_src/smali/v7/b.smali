.class public final Lv7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lv7/b;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lv7/b;->f:I

    iput-object p1, p0, Lv7/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lv7/b;->b:[Ljava/lang/Object;

    if-nez v0, :cond_1

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lv7/b;->c:[Ljava/lang/Object;

    iput-object v0, p0, Lv7/b;->b:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lv7/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lv7/b;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lv7/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lv7/b;->c(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1}, Lv7/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lv7/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lv7/b;->d:I

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_0

    iget-object v4, p0, Lv7/b;->c:[Ljava/lang/Object;

    if-ne v0, v4, :cond_2

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    :cond_0
    iget v4, p0, Lv7/b;->f:I

    const/4 v5, 0x0

    if-lt v4, v3, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    aput-object v3, v0, v1

    aput-object v4, v3, v5

    iput-object v3, p0, Lv7/b;->b:[Ljava/lang/Object;

    move v1, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    :goto_0
    aput-object p1, v0, v1

    add-int/2addr v1, v2

    iput v1, p0, Lv7/b;->d:I

    iget p1, p0, Lv7/b;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lv7/b;->f:I

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lv7/a;

    invoke-direct {v0, p0}, Lv7/a;-><init>(Lv7/b;)V

    return-object v0
.end method
