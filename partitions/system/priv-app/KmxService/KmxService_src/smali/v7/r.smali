.class public final Lv7/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lv7/r;->b:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Immutable list element"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lv7/r;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Lv7/r;->a:Ljava/lang/Object;

    iput v1, p0, Lv7/r;->c:I

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lv7/r;->b:[Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lv7/r;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    array-length v2, v1

    if-le v0, v2, :cond_2

    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lv7/r;->b:[Ljava/lang/Object;

    :cond_2
    :goto_0
    iget-object v1, p0, Lv7/r;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lv7/r;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    iput-object v1, p0, Lv7/r;->a:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lv7/r;->b:[Ljava/lang/Object;

    iget v2, p0, Lv7/r;->c:I

    aput-object p1, v1, v2

    iput v0, p0, Lv7/r;->c:I

    :goto_1
    return-void
.end method

.method public final b()Lv7/t;
    .locals 4

    iget v0, p0, Lv7/r;->c:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lv7/r;->b:[Ljava/lang/Object;

    array-length v1, p0

    if-ne v1, v0, :cond_0

    new-instance v0, Lv7/g;

    invoke-direct {v0, p0}, Lv7/g;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v1, Lv7/g;

    const/4 v2, 0x0

    const-class v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lv7/g;-><init>([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance v0, Lv7/i;

    iget-object p0, p0, Lv7/r;->a:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lv7/i;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    sget-object p0, Lv7/m;->a:Lv7/m;

    return-object p0
.end method
